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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.10/GhosttyKitAppStore.xcframework.zip",
            checksum: "c09a2ff9d91b57fb021e9e594fa05c7e72fd78fe6a0103d105f1d87dd7657f3a"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.10/GhosttyKitStandalone.xcframework.zip",
            checksum: "89379d126e680b95b85a9b708863f519b1353c9464ca43a5b5861d248cf25272"
        ),
    ]
)
