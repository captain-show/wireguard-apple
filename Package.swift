// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WireGuardKit",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        .library(name: "WireGuardKit", targets: ["WireGuardKit"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WireGuardKit",
            dependencies: ["WireGuardKitGo", "WireGuardKitC"]
        ),
        .binaryTarget(
            name: "WireGuardKitGo",
            path: "Artifacts/WireGuardKitGo.xcframework"
        ),
        .target(
            name: "WireGuardKitC",
            dependencies: [],
            publicHeadersPath: "."
        )
    ]
)
