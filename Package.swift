// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SKCore",
    products: [
        .library(name: "SKCore", targets: ["SKCore"])
    ],
    dependencies: [],
    targets: [
        .target(name: "SKCore", path: "Sources")
    ]
)
