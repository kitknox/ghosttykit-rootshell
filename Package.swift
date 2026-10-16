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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.22/GhosttyKitAppStore.xcframework.zip",
            checksum: "62bfd330bffdb1655780b50c13d8fb6eb916b9d70f033c6e514f8f93fe8c9655"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.22/GhosttyKitStandalone.xcframework.zip",
            checksum: "a2cd911918d5fa4a9ca5dc4a9f9e788c9a54dac61dc0c6f5ffed7e847135ac07"
        ),
    ]
)
