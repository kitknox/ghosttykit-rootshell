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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.12/GhosttyKitAppStore.xcframework.zip",
            checksum: "caf71fe4361827cd500c408090900e157f8e439cac02d20a5003c40c8560b1f1"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.12/GhosttyKitStandalone.xcframework.zip",
            checksum: "f71715c34b1282cc5f057bbe029b98ef92a7490b3c7ffd6f92f53454fab1fc89"
        ),
    ]
)
