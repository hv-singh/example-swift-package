// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// change for tag v1.0.2
// change for tag v1.0.3
// change for tag a1.0.4
// change for tag 3.0.0-pre+meta
// change for tag v3.0.1-pre+meta
// change for tag v3.0-pre+meta
// change for tag v4.0-pre+meta

let package = Package(
    name: "ExampleSwift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ExampleSwift",
            targets: ["ExampleSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ExampleSwift",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "Logging", package: "swift-log"),
            ]),
        .testTarget(
            name: "ExampleSwiftTests",
            dependencies: ["ExampleSwift"]
        ),
    ]
)
