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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.1.2/GhosttyKitAppStore.xcframework.zip",
            checksum: "12369903101f0383712bea1f4e0e087e52e0f980070ffb9a3e0785ea9613f004"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.1.2/GhosttyKitStandalone.xcframework.zip",
            checksum: "d7e8c0d8af92ac873765b59f629069ce157ae0b40e6c8c1782f8610ad51a09f5"
        ),
    ]
)
