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
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/CoreStorage.xcframework.zip",
            checksum: "4a139d859249d4c726b952ec4948c92e1727e709328d2a85b51bde28345f3b18"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/CoreLogger.xcframework.zip",
            checksum: "89a19d438d4b812e2e06ab0591d2e6ef7d27724ce8a2f1a3ba6f6c79314d589e"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/CoreNetworking.xcframework.zip",
            checksum: "9f45703298f683a81a359cd623a95190f188ab73516e2b6d7963b304bab4b4c7"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/CoreFormatters.xcframework.zip",
            checksum: "fb08d20252b6ec5493aa3ec9e07e24f87d542e2f081436d74d2c8226b34fe7f4"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/SharedModels.xcframework.zip",
            checksum: "9de93cd0e03bc5668e4fa49fc68546914c8f7177b60c071c4e64c480f5a052f7"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/CoreSession.xcframework.zip",
            checksum: "9370c00dd8aa07ac76f7cd12de2e7b995f6d2f46711cf246df7206050cc70c6a"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/WaveFoundation.xcframework.zip",
            checksum: "ba74c36cc7c1cdc9fb4d151d3247bb7a56e3569c79f04f2e31d409c90805982e"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/WaveAuth.xcframework.zip",
            checksum: "ee6c15504bd876f6644f7d83ac75cb2a1f8450cc9982b1c1d11dccfbd274126a"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/WaveUI.xcframework.zip",
            checksum: "b76f652ee24af2f05ac5b7cdf774d4a5abb9b60c806a8b89e765b2a4936e8aea"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/FeatureHelp.xcframework.zip",
            checksum: "09718b4a46e5dd3036c1dcd11bd73da314337e4727b77abd5734bcbe4c119d75"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/FeatureActivation.xcframework.zip",
            checksum: "ee69a39b841574c959f9d8022e31bbf34f94379d49602a14fd85447115ae3262"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/DatadogCore.xcframework.zip",
            checksum: "e80a1372b8d7a7bc1cdad93ba3849d812c8e53dd2f4ed204803e215b81f36a6a"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/DatadogInternal.xcframework.zip",
            checksum: "e62680983c905cd03e6da2b01067c7fea801f9729d900c9ad977161158cd3818"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.16/DatadogRUM.xcframework.zip",
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
