// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RegistrationKit",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RegistrationKit", targets: ["RegistrationKit"]),
    ],
    targets: [
        .target(name: "RegistrationKit", path: "Sources/RegistrationKit"),
    ]
)
