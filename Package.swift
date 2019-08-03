// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "XCEMisc",
    products: [
        .library(
            name: "XCEMisc",
            targets: [
                "XCEMisc"
            ]
        )
    ],
    targets: [
        .target(
            name: "XCEMisc",
            path: "Sources/Core"
        ),
        .testTarget(
            name: "XCEMiscAllTests",
            dependencies: [
                "XCEMisc"
            ],
            path: "Tests/AllTests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)