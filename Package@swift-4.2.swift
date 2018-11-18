// swift-tools-version:4.2

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
            url: "https://github.com/rpinz/SwiftPango",
            .branch("master")),
        .package(
            url: "https://github.com/rpinz/SwiftCogl",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "CoglPango",
            dependencies: ["CCoglPango","Pango", "Cogl"],
            path: "Sources"),
        .testTarget(
            name: "CoglPangoTests",
            dependencies: ["CoglPango"]),
        .systemLibrary(
            name: "CCoglPango",
            path: "Library/CCoglPango",
            pkgConfig: "cogl-pango-1.0",
            providers: [
                .brew(["libcogl-pango"]),
                .apt(["libcogl-pango-dev"])
            ])
    ],
    swiftLanguageVersions: [
        .v4_2
    ]
)
