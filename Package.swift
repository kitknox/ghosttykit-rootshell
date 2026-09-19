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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.14/GhosttyKitAppStore.xcframework.zip",
            checksum: "ea6c4661c88a860615e4db47955b470a3c7b12ead645e1e24b34764999ff3a9b"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.14/GhosttyKitStandalone.xcframework.zip",
            checksum: "2c3521f66655422f0886e55254852f7b6221ea77375588b1f26189eb79509e0c"
        ),
    ]
)
