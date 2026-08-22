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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.1/GhosttyKitAppStore.xcframework.zip",
            checksum: "ae8e98b6ec29c23437b3536a15ca77ed3295341a84a3d263982f13ceaab9939e"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.1/GhosttyKitStandalone.xcframework.zip",
            checksum: "e9d6d108168f8a40619544c9db57c9ec88f9e30a1d7e04641b2cecf0b20ec128"
        ),
    ]
)
