import PackageDescription

let package = Package(
    name: "CoglPango",
    dependencies: [
        .Package(url: "https://github.com/rhx/CCoglPango.git", majorVersion: 1),
        .Package(url: "https://github.com/rhx/SwiftPango.git", majorVersion: 2),
        .Package(url: "https://github.com/rhx/SwiftCogl.git", majorVersion: 2),
    ]
)
