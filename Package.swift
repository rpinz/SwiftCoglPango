import PackageDescription

let package = Package(
    name: "CoglPango",
    dependencies: [
        .Package(url: "https://github.com/rpinz/CCoglPango", majorVersion: 1),
        .Package(url: "https://github.com/rpinz/SwiftPango", majorVersion: 2),
        .Package(url: "https://github.com/rpinz/SwiftCogl", majorVersion: 2),
    ],
    swiftLanguageVersions: [3, 4]
)
