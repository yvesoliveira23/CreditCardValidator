// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CreditCardValidator",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "CreditCardValidator",
            targets: ["CreditCardValidator"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CreditCardValidator",
            dependencies: []),
        .testTarget(
            name: "CreditCardValidatorTests",
            dependencies: ["CreditCardValidator"]),
    ]
)