// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPluginForAbstraction",
    defaultLocalization: "en",
    platforms: [
        .iOS(
            .v15
        )
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyPluginForAbstraction",
            type: .dynamic,
            targets: ["MyPluginForAbstraction"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/volodymyr-chekyrta/iOSReusableToolingLib.git",
            exact: "1.0.0"
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyPluginForAbstraction",
            dependencies: [
                .product(
                    name: "ReusableToolingLib",
                    package: "iOSReusableToolingLib"
                ),
            ]
        ),
        .testTarget(
            name: "MyPluginForAbstractionTests",
            dependencies: ["MyPluginForAbstraction"]
        ),
    ]
)
