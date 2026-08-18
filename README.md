# GhosttyKit for rootshell

This repository is the public binary Swift package for rootshell's Zig-built
GhosttyKit. Source builds live in the public
[`ghostty-rootshell`](https://github.com/kitknox/ghostty-rootshell)
repository; this repository contains only the Swift package manifest, release
tooling, and release assets.

Two products are published from the same Ghostty revision:

- `GhosttyKitAppStore`: iOS, iOS Simulator, visionOS, visionOS Simulator, and
  Mac Catalyst, compiled without private CGS APIs.
- `GhosttyKitStandalone`: Mac Catalyst only, compiled with the Standalone CGS
  implementation.

Both products expose the Clang module `GhosttyKit` and the same public C ABI.
They must be linked into different application targets; do not link both into
one target.

## Using the package

Add the package over HTTPS and pin an exact release:

```swift
.package(
    url: "https://github.com/kitknox/ghosttykit-rootshell.git",
    exact: "0.1.1"
)
```

Release archives use public GitHub download URLs and do not require GitHub
credentials.

## Publishing

The release script discovers checkouts portably. Explicit options take
precedence over environment variables and sibling checkout fallbacks.

```bash
./scripts/release.sh 0.1.0 \
  --rootshell-source /path/to/rootshell \
  --ghostty-source /path/to/ghostty
```

Environment alternatives are `ROOTSHELL_SOURCE_DIR` and
`GHOSTTY_SOURCE_DIR`. With sibling checkouts named `ghostty-ios` and `ghostty`,
the options can be omitted.

Publishing requires Zig 0.15.x, Xcode command-line tools, authenticated `git`
access, and an authenticated GitHub CLI. The script builds and audits both
artifacts, creates a draft release, updates checksums and public release URLs,
commits and tags the manifest, pushes it, and then publishes the release.

## License

Ghostty and the rootshell packaging changes are available under the MIT
License. See [LICENSE](LICENSE).
