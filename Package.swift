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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.4/GhosttyKitAppStore.xcframework.zip",
            checksum: "0ec209ed579123fe39550bd8cbf7342f3dcecd5c937dfad699940b9afc4cac26"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.4/GhosttyKitStandalone.xcframework.zip",
            checksum: "da4395d74ff7547a6c13bace891e7478d523a7db2b06c5c33cfe9cb76af1e26a"
        ),
    ]
)
