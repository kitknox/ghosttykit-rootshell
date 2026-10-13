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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.20/GhosttyKitAppStore.xcframework.zip",
            checksum: "0c9b14d6e0012027cf3953659428dd191258ca994a400f3b244119a7e1557d0d"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.20/GhosttyKitStandalone.xcframework.zip",
            checksum: "23ad50fe01a0702e6cb4b21ee1f1ebf1d91c199f878a44e639eb530e1c5a2ee2"
        ),
    ]
)
