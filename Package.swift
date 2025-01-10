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
    ],
    targets: [
        .binaryTarget(
            name: "CoreStorage",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/CoreStorage.xcframework.zip",
            checksum: "ad9d37e4bae8a6aa1e95fb2aa955a7add8e7f6d62870b2dacb8aa6a1b8d5d0af"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/CoreLogger.xcframework.zip",
            checksum: "a4bba8d37433ebb0a080ba357e262ad84597e8a3c327e97b98989b1f1166467b"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/CoreNetworking.xcframework.zip",
            checksum: "4d26d1f99653a6432bf9cf52e8c8e506e10a43a8760b2e434d3466f6e26c8e5b"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/CoreFormatters.xcframework.zip",
            checksum: "60872c769b29c8dd2b9cf8aff35fdb6d1cd7c938c5abe590ff5dc928c35c3818"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/SharedModels.xcframework.zip",
            checksum: "0abdb6cb30e82bf4a042073704805310aab6a9a29f08c81b66556367151b4f48"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/CoreSession.xcframework.zip",
            checksum: "df8df04126eb406ff022936d702668042b13422541bd67a16a174efc9b70fbc8"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/WaveFoundation.xcframework.zip",
            checksum: "2b05abede2edc19fbb524f1e3ef24612fa4c06c0058a080967b20898c961ec57"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/WaveAuth.xcframework.zip",
            checksum: "5f6569a419c33eda460fdf0e071338b036023ef10ba19b19c6c92b521690fbe1"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/WaveUI.xcframework.zip",
            checksum: "7e35e0a5c1130dad8f6d39906b32b2f0df01b59381d2b8092a44cc1680567d74"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/FeatureHelp.xcframework.zip",
            checksum: "97bd2c4e317e00905a1e0418a862f35404e54228bc2d1ea0046b3e9c140580da"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/FeatureActivation.xcframework.zip",
            checksum: "124420fa787b5248218c29dc2cde05b6a70aa84b0ba98cea0c11ca5f7b7cf5bf"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/DatadogCore.xcframework.zip",
            checksum: "60ca06e9f75f7d2f88a436f1faa49c6302bb7d21f915123564843d66605a0702"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/DatadogInternal.xcframework.zip",
            checksum: "2fe2efa593fa189168446f8f085881883c6088cc24e32f052b972a656a371033"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.4/DatadogRUM.xcframework.zip",
            checksum: "de748378f814e29ab039903563bb1aa2f62759d89b17268afeb031ec4ab83494"
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
                .target(name: "FeatureHelp"),
                .target(name: "DatadogCore"),
                .target(name: "DatadogInternal"),
                .target(name: "DatadogRUM"),
                .product(name: "Apollo", package: "apollo-ios"),
                .product(name: "ApolloAPI", package: "apollo-ios"),
                .product(name: "Bugsnag", package: "bugsnag-cocoa"),
                .product(name: "KeychainAccess", package: "KeychainAccess"),
            ]
        )
    ]
)