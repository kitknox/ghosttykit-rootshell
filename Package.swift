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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.17/GhosttyKitAppStore.xcframework.zip",
            checksum: "46f21892ca856ca25778b0469c93694d17ce06e21f2da2267d4601d5c2e8fffe"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.17/GhosttyKitStandalone.xcframework.zip",
            checksum: "64e1172269305645649fd51f6f39825f88f090746a3ccd6d43051222f1faa2f8"
        ),
    ]
)
