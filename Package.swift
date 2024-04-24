// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WaveSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "WaveActivation", targets: ["WaveActivation"])
    ],
    dependencies: [
        .package(url: "https://github.com/apollographql/apollo-ios.git", from: "1.7.1"),
        .package(url: "https://github.com/bugsnag/bugsnag-cocoa.git", from: "6.28.0"),
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", from: "4.2.2"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "4.3.4"),
    ],
    targets: [
        .binaryTarget(
            name: "CoreStorage",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.2.0/CoreStorage.xcframework.zip",
            checksum: "a9c19fa3c07b0e6104dafb13f3fb92c2bce78ed3520bf782e116c4a1f73d8727"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.2.0/CoreLogger.xcframework.zip",
            checksum: "e775bc3ea4cf001d941d89083e68de6303d75e27c45de97a7429d20b251672a5"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.2.0/CoreNetworking.xcframework.zip",
            checksum: "f2139b7c87924283032698429ca1a691610450780ab140c6a581dcb2ad270831"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.2.0/CoreFormatters.xcframework.zip",
            checksum: "863e9ae1b0d788fce82cd5e261d9d81937d6f5c3ca7b08aaf752521fab87a0c7"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.2.0/SharedModels.xcframework.zip",
            checksum: "906fad5cce803966022ca82df61224f5c4c4de208fe79e587a6a1d8c2e66ba62"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.2.0/CoreSession.xcframework.zip",
            checksum: "09ca57ff16cf422cd3f44d60d2a334a94e15bad9c200ffbb85ee084e51b05c71"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.2.0/WaveFoundation.xcframework.zip",
            checksum: "4afb2f795894bba2218c446bf38f81c646ea2feae75650f7c9e01b516d05a0bb"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.2.0/WaveUI.xcframework.zip",
            checksum: "493c02d03605e330aa775dd8fcb4b85c8e82012f2959dab90a6bb85c72f523b0"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.2.0/FeatureActivation.xcframework.zip",
            checksum: "90bb64940c9adba1d2891a5cdd3598e04be269e2cb5f552bcb1cfd3788a120e9"
        ),
        .target(
            name: "WaveActivation",
            dependencies: [
                .target(name: "CoreStorage"),
                .target(name: "CoreLogger"),
                .target(name: "CoreNetworking"),
                .target(name: "CoreFormatters"),
                .target(name: "SharedModels"),
                .target(name: "CoreSession"),
                .target(name: "WaveFoundation"),
                .target(name: "WaveUI"),
                .target(name: "FeatureActivation"),
                .product(name: "Apollo", package: "apollo-ios"),
                .product(name: "ApolloAPI", package: "apollo-ios"),
                .product(name: "Bugsnag", package: "bugsnag-cocoa"),
                .product(name: "KeychainAccess", package: "KeychainAccess"),
                .product(name: "Lottie", package: "lottie-ios"),
            ]
        )
    ]
)