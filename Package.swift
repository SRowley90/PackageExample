// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageExample",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .macCatalyst(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PackageExample",
            targets: ["PackageExample"])
    ],
    dependencies: [
        .package(url: "git@github.com:SRowley90/AdapterExample.git", exact: "0.0.1")
    ],
    targets: [
        .target(
            name: "PackageExample",
            dependencies: [
                .product(name: "AdapterExample", package: "AdapterExample")
            ]
        ),
        .testTarget(
            name: "PackageExampleTests",
            dependencies: [
                "PackageExample"
            ]
        )
    ]
)
