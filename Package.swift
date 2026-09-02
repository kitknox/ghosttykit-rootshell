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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.5/GhosttyKitAppStore.xcframework.zip",
            checksum: "d40657ac5a4a38aa19c574967700c96e53a32d1c5246e64127f1569e66acd7bd"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.5/GhosttyKitStandalone.xcframework.zip",
            checksum: "2238dfe003d5ad28fca5337c66494c636689df450186b34e97608f6325df59f5"
        ),
    ]
)
