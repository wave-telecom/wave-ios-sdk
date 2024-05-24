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
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.3.0/CoreStorage.xcframework.zip",
            checksum: "a9c19fa3c07b0e6104dafb13f3fb92c2bce78ed3520bf782e116c4a1f73d8727"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.3.0/CoreLogger.xcframework.zip",
            checksum: "e775bc3ea4cf001d941d89083e68de6303d75e27c45de97a7429d20b251672a5"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.3.0/CoreNetworking.xcframework.zip",
            checksum: "5366dd80c029f2da46915f787a070d2b8605d4e72989067bdee5f420e202a1c3"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.3.0/CoreFormatters.xcframework.zip",
            checksum: "863e9ae1b0d788fce82cd5e261d9d81937d6f5c3ca7b08aaf752521fab87a0c7"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.3.0/SharedModels.xcframework.zip",
            checksum: "0bb094b76faed5150ee51eceed82283928645156fc0dcbc52a6eaef56d77027b"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.3.0/CoreSession.xcframework.zip",
            checksum: "3925c99cf7c14f0c6e10890bede09c88c0dec71a1490207dde3d75259b1bbe98"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.3.0/WaveFoundation.xcframework.zip",
            checksum: "4bc9e660278abce902e7afa9fb559c6e34e3165b18bd829d67f219d49f1d4b1a"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.3.0/WaveUI.xcframework.zip",
            checksum: "1fd4da6c1ca2613f11424a2ad06e55d8455d30c9d6806ccaea6f96e552aca46a"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.3.0/FeatureActivation.xcframework.zip",
            checksum: "14ae94a96f3196bdf59e767dc86aaa2304373e7471981ab7ef6afc7dc53b0ca6"
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