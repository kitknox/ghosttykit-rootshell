// swift-tools-version: 5.9
import PackageDescription

// Binary products are populated by scripts/release.sh when the first release
// is published. Keeping the bootstrap manifest valid makes the repository
// cloneable before release assets exist.
let package = Package(name: "ghosttykit-rootshell")
