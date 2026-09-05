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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.9/GhosttyKitAppStore.xcframework.zip",
            checksum: "f1485d1853bfc438f0b6c706e62a00d5dd1f4fd1a1bab4fa8dc0bb2d665ccde3"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.9/GhosttyKitStandalone.xcframework.zip",
            checksum: "9c8d5ce655d1064885a4c4b049366b3db82d0369e50e5ac9034f3ecc281ef8ed"
        ),
    ]
)
