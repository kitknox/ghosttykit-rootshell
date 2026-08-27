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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.3/GhosttyKitAppStore.xcframework.zip",
            checksum: "33f360c0913b24779bc7d9c5f917d0428cca65f1bb7f3c318ef0a9a46a382f0c"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.3/GhosttyKitStandalone.xcframework.zip",
            checksum: "0ff78109212e6b25bf70c4439734ef028764bd97e109d3557205ab9a783fb5cf"
        ),
    ]
)
