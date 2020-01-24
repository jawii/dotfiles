// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dotfiles",
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Files.git", from: "4.0.0"),
        .package(url: "https://github.com/JohnSundell/ShellOut.git", from: "2.0.0")
    ],
    targets: [
        .target(name: ".dotfiles", dependencies: ["Files", "ShellOut"])
    ]
)
