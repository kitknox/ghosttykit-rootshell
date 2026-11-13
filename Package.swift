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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.24/GhosttyKitAppStore.xcframework.zip",
            checksum: "2e7afa91c538870cb30ce23f6aa7ab857262225653b34a7d68c3ceed03c2b0dd"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.24/GhosttyKitStandalone.xcframework.zip",
            checksum: "9898e4601e036cd994bdd790c0abbbdc4de332eb0730fd1e19688c0955ca6669"
        ),
    ]
)
