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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.0/GhosttyKitAppStore.xcframework.zip",
            checksum: "009c847f26ac3175c96e66fa08ce3d3fbffdd058d1e1922e46a52c4146917db1"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.0/GhosttyKitStandalone.xcframework.zip",
            checksum: "d53f3c4021d233aca0df29b8d7326e12d8343f20038261c257c313a240138d11"
        ),
    ]
)
