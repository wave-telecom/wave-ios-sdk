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
        .package(url: "https://github.com/pointfreeco/swift-dependencies.git", from: "1.2.2"),
    ],
    targets: [
        .binaryTarget(
            name: "CoreStorage",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/CoreStorage.xcframework.zip",
            checksum: "fa80208e2b90bf89db78636d90c0279eb57a938406c9e087a7c54d6b2cac329f"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/CoreLogger.xcframework.zip",
            checksum: "bdcad8a5590d7b2d72a973d885e3d33d37e5a5bc1e47ebaefea29f27103fa9ec"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/CoreNetworking.xcframework.zip",
            checksum: "f18bb6012bb7505e29fa4c5354f299c5678a3e3a6ba0ea006d5eaa98eda3a92c"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/CoreFormatters.xcframework.zip",
            checksum: "0538000171f0075eed7df6bbf25dbf6cf77074176fdae9b5187d1f9014fdf99a"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/SharedModels.xcframework.zip",
            checksum: "5bf58f3cf8854beddadcd9205e32b36e73ee05493e07a02dd838d61b1744550a"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/CoreSession.xcframework.zip",
            checksum: "e2c85418bb3cbdbd2b5c4d4779b679eefcbff63731a9d9971442917ad9d1f6f8"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/WaveFoundation.xcframework.zip",
            checksum: "5d798e363c0dd2e34f3285d1820d3c8d9d10be00f1d5e0e7999704b26509c1a5"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/WaveAuth.xcframework.zip",
            checksum: "e9bd1ccd26009c605224a94472cec174aea6d9b9600b9a165a2af331cdd6ec92"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/WaveUI.xcframework.zip",
            checksum: "cf9359f1d6ca6327dd7d532c6d26d5a622476c38a72ffb8308ceb367246e1974"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/FeatureActivation.xcframework.zip",
            checksum: "22822498f75012c154fcff7937bb0006c4de766bffc2b4191e43f4dae69688bc"
        ),
        .binaryTarget(
            name: "IzziComponents",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.3/IzziComponents.xcframework.zip",
            checksum: "6fc7a3ecc3a9944eadfd915b556501a9387eba61261f12c5b4292fd024924c77"
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
                .target(name: "WaveAuth"),
                .target(name: "WaveFoundation"),
                .target(name: "WaveUI"),
                .target(name: "FeatureActivation"),
                .target(name: "IzziComponents"),
                .product(name: "Apollo", package: "apollo-ios"),
                .product(name: "ApolloAPI", package: "apollo-ios"),
                .product(name: "Bugsnag", package: "bugsnag-cocoa"),
                .product(name: "KeychainAccess", package: "KeychainAccess"),
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "Dependencies", package: "swift-dependencies"),
            ]
        )
    ]
)