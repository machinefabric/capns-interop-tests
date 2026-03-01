// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "capdag-interop-router-swift",
    platforms: [.macOS(.v14)],
    products: [
        .executable(name: "capdag-interop-router-swift", targets: ["RouterMain"])
    ],
    dependencies: [
        .package(path: "../../../../../capdag-objc")
    ],
    targets: [
        .executableTarget(
            name: "RouterMain",
            dependencies: [
                .product(name: "Bifaci", package: "capdag-objc")
            ],
            path: "Sources"
        )
    ]
)
