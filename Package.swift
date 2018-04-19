// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SKCore",
    products: [
        .library(name: "SKCore", targets: ["SKCore"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SKCore", dependencies: [], path: "Sources"),
        .testTarget(name: "SKCoreTests", dependencies: ["SKCore"]),
    ]
)
