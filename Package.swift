// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "unxip",
    products: [
        .library(
            name: "Unxip",
            targets: ["Unxip"]),
    ],
    targets: [
        .target(
            name: "Unxip",
            dependencies: [],
            linkerSettings: [
                LinkerSetting.linkedFramework("PackageKit"),
                LinkerSetting.unsafeFlags(["-F/System/Library/PrivateFrameworks/"]),
            ])
    ]
)
