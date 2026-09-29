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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.16/GhosttyKitAppStore.xcframework.zip",
            checksum: "b587855b572727b407a983fe3c333b13331badef9c5c7cd3c7800e68685ba109"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.16/GhosttyKitStandalone.xcframework.zip",
            checksum: "b71787c8a93e04d85110a2ba1e56ee226194cd448484bebdaf0baf5d0e517874"
        ),
    ]
)
