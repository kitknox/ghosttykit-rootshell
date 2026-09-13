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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.13/GhosttyKitAppStore.xcframework.zip",
            checksum: "f9bcdc905bf4075332cd72281e6c2ac1d9a86a34e223d7aae654b5c5dc9c2707"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.13/GhosttyKitStandalone.xcframework.zip",
            checksum: "e955f6ceb0f14a0385701102e853c0603afa99cb6a3b41314ae89a6be9aabcd3"
        ),
    ]
)
