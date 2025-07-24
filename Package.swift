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
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/CoreStorage.xcframework.zip",
            checksum: "968fd1e20ecd51068979373b87b3351550b9eba4d45bd51be587e98bb21d3e11"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/CoreLogger.xcframework.zip",
            checksum: "0102dd059fef3d2d911136f9396afc6dcec4be6d1d5853757fe42f16a47fd894"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/CoreNetworking.xcframework.zip",
            checksum: "fca25ae53b13457cd214ad95daacc829a58566102f7dd908435b689d4486988d"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.12/CoreFormatters.xcframework.zip",
            checksum: "ec8602c3ca9be037015c85694bc4561eb55bdb24ba5321b3d43bc0edc148706f"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/SharedModels.xcframework.zip",
            checksum: "e4335722640e513c941bf55bd2c66cc9665edc7d52a0fe6e5f8daa01b86d50a7"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/CoreSession.xcframework.zip",
            checksum: "2cf31e39c87a2f050033a612c77a723d76b756e27222b059cb9b245d96dfd0b1"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/WaveFoundation.xcframework.zip",
            checksum: "f76586150950af2b99940047be0d855622676fd0ef888fe520a287385a52bf45"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/WaveAuth.xcframework.zip",
            checksum: "332930e7f18918a42fb3877c93c6dac83c527bf166de1e05a82c3fbf2c515681"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/WaveUI.xcframework.zip",
            checksum: "e9dbdbae563df85f8d74c28ff274ad754ceb92f1c61838a9e560ba967c94370e"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/FeatureHelp.xcframework.zip",
            checksum: "578d9ca9d8ad062a9677b89655025eafd38745932868b9a5bb0b4c0757bee773"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/FeatureActivation.xcframework.zip",
            checksum: "18768df88b4c4262bee8d2fc82a7601ed747cf836a265662ffb9d862e46cde33"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/DatadogCore.xcframework.zip",
            checksum: "e80a1372b8d7a7bc1cdad93ba3849d812c8e53dd2f4ed204803e215b81f36a6a"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/DatadogInternal.xcframework.zip",
            checksum: "e62680983c905cd03e6da2b01067c7fea801f9729d900c9ad977161158cd3818"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.13/DatadogRUM.xcframework.zip",
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
