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
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/CoreStorage.xcframework.zip",
            checksum: "9f5b7c39d8d34bee244816688711177c96459583fa94eb9a16cf3b97672581f8"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/CoreLogger.xcframework.zip",
            checksum: "5349a17ab25adba1df57f26a514f27494fb2a55e24fa21feefde96311454259a"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/CoreNetworking.xcframework.zip",
            checksum: "0c681cf1f8a13a75b1d18a108f2ddb3e4fde2c8b9efcd84a1c5da2374abcd487"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/CoreFormatters.xcframework.zip",
            checksum: "af658b3027efc477e338bc5688de852a38c55d18af1997b67c2c1721ac589ff7"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/SharedModels.xcframework.zip",
            checksum: "10ebba66925860a522687d49c21b7733eaf68eb615b5a7d31a4fdfc8619094a4"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/CoreSession.xcframework.zip",
            checksum: "3bc14abcac33157c80921640fed78fa4ed2b669d8aa202387d0876d78253cd1c"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/WaveFoundation.xcframework.zip",
            checksum: "e880b127e35d2c4f4ef26fe3f93a0d9bef915294418e583bb56d6ed6d7548fe5"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/WaveAuth.xcframework.zip",
            checksum: "cec9d559248fd755f7595d54609f12a180551725856a8def80a6e21911c4671a"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/WaveUI.xcframework.zip",
            checksum: "28b6f9e2c0ce2963c0ff5a2fc0e18a168c903cd65045c655840b0f4dcb968096"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/FeatureHelp.xcframework.zip",
            checksum: "030d81d2aaa69af150947df8c7bf0d85bf9c5f95cc3daec91be33b84948dafc5"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.7/FeatureActivation.xcframework.zip",
            checksum: "ceb0eb30eacc5ed345fbb69425560e6a6f563c1592bf9a16bca5a95baacc9ab0"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.6/DatadogCore.xcframework.zip",
            checksum: "60ca06e9f75f7d2f88a436f1faa49c6302bb7d21f915123564843d66605a0702"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.6/DatadogInternal.xcframework.zip",
            checksum: "2fe2efa593fa189168446f8f085881883c6088cc24e32f052b972a656a371033"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.6/DatadogRUM.xcframework.zip",
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
