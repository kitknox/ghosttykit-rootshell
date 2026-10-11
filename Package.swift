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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.19/GhosttyKitAppStore.xcframework.zip",
            checksum: "a6b67a3d3a4a747371545318fbd86f97f57b9b89582d176465a7fa6d54a23a7f"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.19/GhosttyKitStandalone.xcframework.zip",
            checksum: "670d464b93f68fad07baf8092281204e7e822c09b37fe8a61543e5280cbba15c"
        ),
    ]
)
