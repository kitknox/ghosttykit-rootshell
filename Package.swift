// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ghosttykit-rootshell",
    platforms: [.iOS(.v17), .macCatalyst(.v17), .visionOS(.v1)],
    products: [
        .library(name: "GhosttyKitAppStore", targets: ["GhosttyKitAppStore"]),
        .library(name: "GhosttyKitStandalone", targets: ["GhosttyKitStandalone"]),
    ],
    targets: [
        .binaryTarget(
            name: "GhosttyKitAppStore",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.7/GhosttyKitAppStore.xcframework.zip",
            checksum: "d90de17a17473b8960b03ebe043bce5171d5a2470e3c610b04344427ca18b19e"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.7/GhosttyKitStandalone.xcframework.zip",
            checksum: "21d6257ba42a62703dc912dd86b80a615310930ccbac5c2bbe9591898ddf85aa"
        ),
    ]
)
