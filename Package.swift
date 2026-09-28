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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.15/GhosttyKitAppStore.xcframework.zip",
            checksum: "bd15a88b461daf560b8797850144c50d9984b46d4ec2c2e3324cdd0083677995"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.15/GhosttyKitStandalone.xcframework.zip",
            checksum: "aabc5e5aee1b8b927a584ce5b56b60c9c8145d91c9b9608fccad901d60892043"
        ),
    ]
)
