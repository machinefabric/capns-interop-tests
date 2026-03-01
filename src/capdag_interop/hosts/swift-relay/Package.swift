// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "capdag-interop-relay-host-swift",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(path: "../../../../../capdag-objc"),
        .package(url: "https://github.com/unrelentingtech/SwiftCBOR.git", from: "0.4.7"),
    ],
    targets: [
        .executableTarget(
            name: "capdag-interop-relay-host-swift",
            dependencies: [
                .product(name: "CapDAG", package: "capdag-objc"),
                .product(name: "Bifaci", package: "capdag-objc"),
                .product(name: "SwiftCBOR", package: "SwiftCBOR"),
            ],
            path: "Sources"
        ),
    ]
)
