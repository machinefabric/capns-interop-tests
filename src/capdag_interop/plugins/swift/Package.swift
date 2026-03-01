// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "capdag-interop-plugin-swift",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(path: "../../../../../capdag-objc"),
        .package(path: "../../../../../ops-objc"),
    ],
    targets: [
        .executableTarget(
            name: "capdag-interop-plugin-swift",
            dependencies: [
                .product(name: "Bifaci", package: "capdag-objc"),
                .product(name: "Ops", package: "ops-objc"),
            ],
            path: "Sources"
        )
    ]
)
