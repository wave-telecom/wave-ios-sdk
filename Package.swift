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
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/CoreStorage.xcframework.zip",
            checksum: "964084c80e7b03cc034e894d386ca576a919cf2fb95707e42840f4de767358a8"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/CoreLogger.xcframework.zip",
            checksum: "d90ece6fa36fa22f7422df2b08f4b18894d64dd09fa561e1bfc2ffe23ac2c182"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/CoreNetworking.xcframework.zip",
            checksum: "0486beb446664f3b4fddf2fdbea5de6c409b733606f7d7dbba5aa5684cd163e1"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/CoreFormatters.xcframework.zip",
            checksum: "feab152e9a8980f056bcead014380283c61371816b3cdc454419eb3f23e88e26"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/SharedModels.xcframework.zip",
            checksum: "283aa1cb55dfeeb685ab52865a647688f47b40c3e4e7f0be3abb0851fcf9fd72"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/CoreSession.xcframework.zip",
            checksum: "a77cf2fe912739744ae26e70a47d6e732dc03ac3cb502640d6eff1ad52069677"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/WaveFoundation.xcframework.zip",
            checksum: "5e402cc953ea7d045ed9f4fe37e51821b296844014ec583cdc9651e2dd62d2bf"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/WaveAuth.xcframework.zip",
            checksum: "a54929cbbcaa39e7ab3ed1b2d8605422e9b60d14a4f4d582a04a9b0d240a6ef2"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/WaveUI.xcframework.zip",
            checksum: "ba1d90cb60a24da4566920dc47d36abea4c5d16c8928d2f15e955cf9ae8c1522"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/FeatureHelp.xcframework.zip",
            checksum: "230d65d74e82358cc87cef0126b4390e48999d70c25e5d27bab0cc09dfe3f032"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/FeatureActivation.xcframework.zip",
            checksum: "ae2a49258b7fadbfee4cf5008929928b82ca3aa25be3eedb71eb16c43c8bf9c7"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/DatadogCore.xcframework.zip",
            checksum: "e80a1372b8d7a7bc1cdad93ba3849d812c8e53dd2f4ed204803e215b81f36a6a"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/DatadogInternal.xcframework.zip",
            checksum: "e62680983c905cd03e6da2b01067c7fea801f9729d900c9ad977161158cd3818"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.15/DatadogRUM.xcframework.zip",
            checksum: "8a6074377c0af298d59c0e04b621429e9f8a40346a8a2d121de6318245bcdc5a"
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
