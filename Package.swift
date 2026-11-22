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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.26/GhosttyKitAppStore.xcframework.zip",
            checksum: "a85cdba9a16ed14f7a7f9414c5cd04b97ab3585fdd7eb7590c440996ffdf5f56"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.26/GhosttyKitStandalone.xcframework.zip",
            checksum: "077819ea601a7ec3047f960f441577fa05ff7092e4dded583d4fc75ee53fbb7d"
        ),
    ]
)
