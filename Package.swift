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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.18/GhosttyKitAppStore.xcframework.zip",
            checksum: "a2ba524fb3c057901d0bae881e7ef0f0d37f54d0b9b39fdd55d076c5245c9596"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.18/GhosttyKitStandalone.xcframework.zip",
            checksum: "60e915ee686ad1cdc3b9473344883ec43f59daf76a3b04e2b73a5e331e47b72c"
        ),
    ]
)
