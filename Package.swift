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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.2/GhosttyKitAppStore.xcframework.zip",
            checksum: "227aaa33299f1b2dde0c9d5671a826dba981bcbc8521f159f068d92c963dae0d"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.2/GhosttyKitStandalone.xcframework.zip",
            checksum: "01e840c7b9fceb122077cf6a01a65ff4e43c2d5a17c885c95774822c313fa9af"
        ),
    ]
)
