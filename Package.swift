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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.23/GhosttyKitAppStore.xcframework.zip",
            checksum: "2119efcdb6f49a7aa18f7742f3bd76da2bf9adc4ba282fdd9544e8009be38e7e"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.23/GhosttyKitStandalone.xcframework.zip",
            checksum: "5f81a7dc8740ecb2df00e6743cbe0982d37166e27ebab2b9650f57d951250aa3"
        ),
    ]
)
