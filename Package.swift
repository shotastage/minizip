// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MiniZip",
    products: [
        .library(
            name: "MiniZip",
            targets: ["MiniZip"]),
    ],
    targets: [
        .systemLibrary(
            name: "MiniZip",
            providers: [
                .apt(["zlib"]),
                .brew(["zlib"]),
            ]
        )
    ]
)
