// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "RecipePlannerAPI",
    // .macOS(.v10_15) is required because the dependencies below declare
    // it as their own floor — SPM won't let this package declare a lower
    // one. .iOS(.v18) is the real consumer-facing floor for this package.
    platforms: [.iOS(.v18), .macOS(.v10_15)],
    products: [
        .library(name: "RecipePlannerAPI", targets: ["RecipePlannerAPI"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-generator", from: "1.13.0"),
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.12.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.3.0"),
    ],
    targets: [
        .target(
            name: "RecipePlannerAPI",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            plugins: [
                .plugin(name: "OpenAPIGenerator", package: "swift-openapi-generator")
            ]
        )
    ]
)
