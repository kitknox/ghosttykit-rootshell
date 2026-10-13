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
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.21/GhosttyKitAppStore.xcframework.zip",
            checksum: "13c33fd916618f90787975ff810a7603ef5571e5673b790b66b87995c32d7e0e"
        ),
        .binaryTarget(
            name: "GhosttyKitStandalone",
            url: "https://github.com/kitknox/ghosttykit-rootshell/releases/download/v0.2.21/GhosttyKitStandalone.xcframework.zip",
            checksum: "95ac9ff01ee9240e70b353fb701b07073cc8416247134de23bcb2edc88b911ac"
        ),
    ]
)
