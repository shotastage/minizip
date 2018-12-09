import PackageDescription

let package = Package(
    name: "MiniZip",
    products: [
        .library(
            name: "MiniZip",
            targets: ["MiniZip"]
        )
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
