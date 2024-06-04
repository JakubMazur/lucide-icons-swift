// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LucideIcons",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_13)
	],
    products: [
        .library(
            name: "LucideIcons",
            targets: ["LucideIcons"]),
    ],
    targets: [
        .target(
            name: "LucideIcons",
			resources: [
				.process("icons.xcassets")
			]
		),
        .testTarget(
            name: "LucideIconsTests",
            dependencies: ["LucideIcons"]),
    ]
)
