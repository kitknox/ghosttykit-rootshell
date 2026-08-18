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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.1.1/GhosttyKitAppStore.xcframework.zip",
            checksum: "855b3a2feb62258b525347e6d4491d7342e82c65f97ef590b8a653ef406451f9"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.1.1/GhosttyKitStandalone.xcframework.zip",
            checksum: "a72140c3f897703024eccb56022462a6e3eedad41caa158fa64fdaf86fde9d6c"
        ),
    ]
)
