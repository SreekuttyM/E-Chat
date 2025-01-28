// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChatService",
    platforms: [
        .macOS(.v10_15),.iOS(.v13)
    ],
    products: [
        .executable(name: "ChatService", targets: ["ChatService"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0")
    ],
    targets: [
        .executableTarget(
            name: "ChatService",
            dependencies: [
                .product(name: "Vapor", package: "vapor")
            ])
    ]
)
