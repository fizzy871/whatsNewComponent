// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WhatsNewComponent",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "WhatsNewComponent",
            targets: ["WhatsNewComponent"]),
    ],
    targets: [
        .target(
            name: "WhatsNewComponent",
            path: "Sources/WhatsNewComponent"
        ),
    ]
)
