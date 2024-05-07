// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "STCompo",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "STCompo",
            targets: ["STCompo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.6")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "STCompo",
            dependencies: ["Starscream"],
            path: "Sources"),
        .testTarget(
            name: "STCompoTests",
            dependencies: ["STCompo"]),
    ]
)
