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
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/CoreStorage.xcframework.zip",
            checksum: "acaab4c2560113a68b6de791fb89a746fbbbc732b7267d4c95a0a9564b90d6a5"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/CoreLogger.xcframework.zip",
            checksum: "f467964fcbe13244ddc2096670f332926442ee373e429d5eb1072ef2261cebec"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/CoreNetworking.xcframework.zip",
            checksum: "39b6db9fb06d715e6510ffe09e2fabd73da35062e10681cfdb9e74f6bfef9249"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/CoreFormatters.xcframework.zip",
            checksum: "6451c83c8c593ccc752ae0456764abb2b1eca3078eec6e65e72256cc860f26bf"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/SharedModels.xcframework.zip",
            checksum: "5cf07df3ccf5305f31c92b0c93c2e40791536062c237dd730e4bfe8f173def35"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/CoreSession.xcframework.zip",
            checksum: "0eb846d81c2ba9b53ac8bea53b4afe479959617aba5e228ebcdff3d50c208049"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/WaveFoundation.xcframework.zip",
            checksum: "e3944c7946cf8c9e3819d09bf16ba76caf61b88f8f32de04754a68711ae6c7bb"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/WaveAuth.xcframework.zip",
            checksum: "d23f420d46a07fd58b8854a87e136f08c604a56f9dcfd1eed6b78edced7be941"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/WaveUI.xcframework.zip",
            checksum: "ef64a61b5b41359304c710849e74b7df6337c45636c6cc1cd182200b68b63f5f"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/FeatureHelp.xcframework.zip",
            checksum: "209ef0605ee855993baadf4c9ecfe0007e6eee7a250d3bd3826ffbcc496644f8"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/FeatureActivation.xcframework.zip",
            checksum: "56e3603e8f9b7527700964fcb35af53c512a4eaf2a417910670133a0d91f7226"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/DatadogCore.xcframework.zip",
            checksum: "aa62ea6b6f7ab06d94bcaf56191235b76939360499c28a63ceebf1016b8bdd68"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/DatadogInternal.xcframework.zip",
            checksum: "e62680983c905cd03e6da2b01067c7fea801f9729d900c9ad977161158cd3818"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.8/DatadogRUM.xcframework.zip",
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
