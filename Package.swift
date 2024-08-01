// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v11),
    ],
    products: [
        .library(name: "BreezSDK", targets: ["breez_sdkFFI", "BreezSDK"]),
    ],
    targets: [
        .binaryTarget(name: "breez_sdkFFI", url: "https://github.com/DeanDonkov/breez-sdk-swift/releases/download/1.0.2/breez_sdkFFI.xcframework.zip", checksum: "48910b62e093a0f44484333db5738fde9030d3f1ec05c4fee225ac80801c0c79"),
        .target(name: "BreezSDK", dependencies: ["breez_sdkFFI"]),
    ]
)
