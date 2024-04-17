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
        .library(name: "WaveSDK", targets: ["WaveSDK"])
    ],
    dependencies: [
        .package(url: "https://github.com/apollographql/apollo-ios.git", from: "1.7.1"),
        .package(url: "https://github.com/bugsnag/bugsnag-cocoa.git", from: "6.28.0"),
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", from: "4.2.2"),
    ],
    targets: [
        .binaryTarget(
            name: "CoreStorage",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreStorage.xcframework.zip",
            checksum: "a9c19fa3c07b0e6104dafb13f3fb92c2bce78ed3520bf782e116c4a1f73d8727"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreLogger.xcframework.zip",
            checksum: "e775bc3ea4cf001d941d89083e68de6303d75e27c45de97a7429d20b251672a5"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreNetworking.xcframework.zip",
            checksum: "c5a6518951bf9f149c9030b325c901eabf48f0a62e4a03578ac6e003b6569c40"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreFormatters.xcframework.zip",
            checksum: "863e9ae1b0d788fce82cd5e261d9d81937d6f5c3ca7b08aaf752521fab87a0c7"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/SharedModels.xcframework.zip",
            checksum: "b3daad2086bc42e1962cbb37a9541482c89608d759240eaace1aa9781825bc26"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreSession.xcframework.zip",
            checksum: "09ca57ff16cf422cd3f44d60d2a334a94e15bad9c200ffbb85ee084e51b05c71"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/WaveFoundation.xcframework.zip",
            checksum: "e1167d399bcf51db16587c363144ffeb12b801b54ed8109d4d1feb40f349b9b4"
        ),
        .target(
            name: "WaveSDK",
            dependencies: [
                .target(name: "CoreStorage"),
                .target(name: "CoreLogger"),
                .target(name: "CoreNetworking"),
                .target(name: "CoreFormatters"),
                .target(name: "SharedModels"),
                .target(name: "CoreSession"),
                .target(name: "WaveFoundation"),
                .product(name: "Apollo", package: "apollo-ios"),
                .product(name: "ApolloAPI", package: "apollo-ios"),
                .product(name: "Bugsnag", package: "bugsnag-cocoa"),
                .product(name: "KeychainAccess", package: "KeychainAccess"),
            ],
            path: "Source"
        )
    ]
)