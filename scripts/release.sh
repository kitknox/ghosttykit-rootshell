#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

VERSION="${1:-}"
if [[ -z "$VERSION" ]]; then
    echo "Usage: $0 <version> [--rootshell-source <path>] [--ghostty-source <path>] [--zig <path>]" >&2
    exit 1
fi
shift

ROOTSHELL_SOURCE="${ROOTSHELL_SOURCE_DIR:-}"
GHOSTTY_SOURCE="${GHOSTTY_SOURCE_DIR:-}"
ZIG_BIN="${ZIG_BIN:-}"

while [[ $# -gt 0 ]]; do
    case "$1" in
        --rootshell-source)
            ROOTSHELL_SOURCE="${2:-}"
            shift 2
            ;;
        --ghostty-source)
            GHOSTTY_SOURCE="${2:-}"
            shift 2
            ;;
        --zig)
            ZIG_BIN="${2:-}"
            shift 2
            ;;
        *)
            echo "ERROR: unknown option: $1" >&2
            exit 1
            ;;
    esac
done

if [[ ! "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "ERROR: version must be semantic versioning without a leading v" >&2
    exit 1
fi
TAG="v$VERSION"

if [[ -z "$ROOTSHELL_SOURCE" && -f "$PACKAGE_DIR/../ghostty-ios/scripts/build-framework.sh" ]]; then
    ROOTSHELL_SOURCE="$PACKAGE_DIR/../ghostty-ios"
fi
if [[ -z "$GHOSTTY_SOURCE" && -f "$PACKAGE_DIR/../ghostty/build.zig" ]]; then
    GHOSTTY_SOURCE="$PACKAGE_DIR/../ghostty"
fi
if [[ -z "$ROOTSHELL_SOURCE" || ! -x "$ROOTSHELL_SOURCE/scripts/build-framework.sh" ]]; then
    echo "ERROR: pass --rootshell-source or set ROOTSHELL_SOURCE_DIR" >&2
    exit 1
fi
if [[ -z "$GHOSTTY_SOURCE" || ! -f "$GHOSTTY_SOURCE/build.zig" ]]; then
    echo "ERROR: pass --ghostty-source or set GHOSTTY_SOURCE_DIR" >&2
    exit 1
fi
ROOTSHELL_SOURCE="$(cd "$ROOTSHELL_SOURCE" && pwd)"
GHOSTTY_SOURCE="$(cd "$GHOSTTY_SOURCE" && pwd)"

for command in git gh ditto swift; do
    if ! command -v "$command" >/dev/null; then
        echo "ERROR: required command not found: $command" >&2
        exit 1
    fi
done
if [[ -n "$(git -C "$PACKAGE_DIR" status --porcelain)" ]]; then
    echo "ERROR: package repository must be clean before publishing" >&2
    exit 1
fi
if git -C "$PACKAGE_DIR" rev-parse "$TAG" >/dev/null 2>&1; then
    echo "ERROR: tag already exists: $TAG" >&2
    exit 1
fi
gh auth status >/dev/null

BUILD_ARGS=(all --ghostty-source "$GHOSTTY_SOURCE" --clean)
if [[ -n "$ZIG_BIN" ]]; then
    BUILD_ARGS+=(--zig "$ZIG_BIN")
fi
"$ROOTSHELL_SOURCE/scripts/build-framework.sh" "${BUILD_ARGS[@]}"

LOCAL_PACKAGE="$ROOTSHELL_SOURCE/.local-packages/ghosttykit-rootshell"
APPSTORE_ID="$(<"$LOCAL_PACKAGE/Artifacts/AppStore/current")"
STANDALONE_ID="$(<"$LOCAL_PACKAGE/Artifacts/Standalone/current")"
APPSTORE_XCF="$LOCAL_PACKAGE/Artifacts/AppStore/$APPSTORE_ID/GhosttyKitAppStore.xcframework"
STANDALONE_XCF="$LOCAL_PACKAGE/Artifacts/Standalone/$STANDALONE_ID/GhosttyKitStandalone.xcframework"

STAGE="$PACKAGE_DIR/.build/releases/$VERSION"
rm -rf "$STAGE"
mkdir -p "$STAGE"
APPSTORE_ZIP="$STAGE/GhosttyKitAppStore.xcframework.zip"
STANDALONE_ZIP="$STAGE/GhosttyKitStandalone.xcframework.zip"
ditto -c -k --sequesterRsrc --keepParent "$APPSTORE_XCF" "$APPSTORE_ZIP"
ditto -c -k --sequesterRsrc --keepParent "$STANDALONE_XCF" "$STANDALONE_ZIP"

APPSTORE_CHECKSUM="$(swift package compute-checksum "$APPSTORE_ZIP")"
STANDALONE_CHECKSUM="$(swift package compute-checksum "$STANDALONE_ZIP")"
GHOSTTY_REVISION="$(git -C "$GHOSTTY_SOURCE" rev-parse HEAD)"

gh release create "$TAG" "$APPSTORE_ZIP" "$STANDALONE_ZIP" \
    --repo kitknox/ghosttykit-rootshell \
    --draft \
    --title "GhosttyKit $VERSION" \
    --notes "Zig Ghostty revision: $GHOSTTY_REVISION"

RELEASE_JSON="$(gh api "repos/kitknox/ghosttykit-rootshell/releases/tags/$TAG")"
APPSTORE_ASSET_ID="$(sed -n 's/.*"id":\([0-9][0-9]*\).*"name":"GhosttyKitAppStore\.xcframework\.zip".*/\1/p' <<<"${RELEASE_JSON//$'\n'/}")"
STANDALONE_ASSET_ID="$(sed -n 's/.*"id":\([0-9][0-9]*\).*"name":"GhosttyKitStandalone\.xcframework\.zip".*/\1/p' <<<"${RELEASE_JSON//$'\n'/}")"
if [[ -z "$APPSTORE_ASSET_ID" || -z "$STANDALONE_ASSET_ID" ]]; then
    echo "ERROR: could not determine uploaded GitHub asset IDs; draft release was retained" >&2
    exit 1
fi

cat > "$PACKAGE_DIR/Package.swift" <<EOF
// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ghosttykit-rootshell",
    platforms: [.iOS(.v18), .macCatalyst(.v18), .visionOS(.v2)],
    products: [
        .library(name: "GhosttyKitAppStore", targets: ["GhosttyKitAppStore"]),
        .library(name: "GhosttyKitStandalone", targets: ["GhosttyKitStandalone"]),
    ],
    targets: [
        .binaryTarget(
            name: "GhosttyKitAppStore",
            url: "https://api.github.com/repos/kitknox/ghosttykit-rootshell/releases/assets/$APPSTORE_ASSET_ID.zip",
            checksum: "$APPSTORE_CHECKSUM"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://api.github.com/repos/kitknox/ghosttykit-rootshell/releases/assets/$STANDALONE_ASSET_ID.zip",
            checksum: "$STANDALONE_CHECKSUM"
        ),
    ]
)
EOF

swift package --package-path "$PACKAGE_DIR" dump-package >/dev/null
git -C "$PACKAGE_DIR" add Package.swift
git -C "$PACKAGE_DIR" commit -m "Publish GhosttyKit $VERSION"
git -C "$PACKAGE_DIR" tag "$TAG"
BRANCH="$(git -C "$PACKAGE_DIR" branch --show-current)"
git -C "$PACKAGE_DIR" push origin "$BRANCH" "$TAG"
gh release edit "$TAG" --repo kitknox/ghosttykit-rootshell --draft=false

echo "Published GhosttyKit $VERSION from Ghostty $GHOSTTY_REVISION"
