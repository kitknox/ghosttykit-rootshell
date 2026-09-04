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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.8/GhosttyKitAppStore.xcframework.zip",
            checksum: "bfb74bd98d18336845c1ed445c45e277d2ae42963c84c55e238965eb2447492b"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.8/GhosttyKitStandalone.xcframework.zip",
            checksum: "d6d85cce4d2691913fb72b2dbadd4a23907e0aa2986c699d28e9c37e5fceb2c1"
        ),
    ]
)
