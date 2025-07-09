// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExampleSwift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ExampleSwift",
            targets: ["ExampleSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ExampleSwift",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "swift-argument-parser", package: "swift-argument-parser"),
            ]),
        .testTarget(
            name: "ExampleSwiftTests",
            dependencies: ["ExampleSwift"]
        ),
    ]
)
