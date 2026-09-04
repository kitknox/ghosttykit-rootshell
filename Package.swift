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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.6/GhosttyKitAppStore.xcframework.zip",
            checksum: "65d241c3358b89a7cef9929fe8d878cf5e80c1603142f874b9b916963bae2e89"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.6/GhosttyKitStandalone.xcframework.zip",
            checksum: "e79ecc7afcfc8b9576dbf6f1597993953db40e885cdea71308314bd8a6f96669"
        ),
    ]
)
