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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.11/GhosttyKitAppStore.xcframework.zip",
            checksum: "9eadbaa24ded7bcbcf6eebdf61eb9ddd97b40e0f58a78de9dfd05c1d47677f7e"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.11/GhosttyKitStandalone.xcframework.zip",
            checksum: "b44fc9fe5f836f6cdef6846f9465ce7cd9ddbd09e5daaa48ccbd3b79655689bf"
        ),
    ]
)
