// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "CoglPango",
    products: [
        .library(
            name: "CoglPango",
            targets: ["CoglPango"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/rpinz/CCoglPango",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftPango",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftCogl",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "CoglPango",
            dependencies: ["Pango", "Cogl"],
            path: "Sources"),
        .testTarget(
            name: "CoglPangoTests",
            dependencies: ["CoglPango"])
    ],
    swiftLanguageVersions: [4]
)
