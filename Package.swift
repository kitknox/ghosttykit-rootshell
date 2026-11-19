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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.25/GhosttyKitAppStore.xcframework.zip",
            checksum: "17587c5b95e61b8b25768a08c986dcee0857cac0cc11a45ad34fdb22c2562ed1"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.25/GhosttyKitStandalone.xcframework.zip",
            checksum: "561e90da1b45a4170884c61ac142f765a5d8ec9a155b6b369ad00d58bd669992"
        ),
    ]
)
