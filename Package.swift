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
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/CoreStorage.xcframework.zip",
            checksum: "1b1db75762eba9b794c4138e85819ea92579b0a63fd5aa598a0bd7946ff0086d"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/CoreLogger.xcframework.zip",
            checksum: "48f66665ccb80db0692f5744667c50f5a60bda54619ef975099eb4e992b052fc"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/CoreNetworking.xcframework.zip",
            checksum: "2b91fa33f3f369199f6f02b314b63c48303c2b57f7e1bdf5e5a49c236f68fc8f"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/CoreFormatters.xcframework.zip",
            checksum: "4e5e3295b78cf20033a1673b4153bf62ba530b2b892a466c77e7443cb98a4db6"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/SharedModels.xcframework.zip",
            checksum: "a3b10389f6d86032810184d45b1d4a017ee8ac07bda6bb1c2d0519ea1e155ae9"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/CoreSession.xcframework.zip",
            checksum: "51b2e14369c2b2e990e34efa587cd2385a37ddb7ad1ba6f8419360d0efb02853"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/WaveFoundation.xcframework.zip",
            checksum: "f76586150950af2b99940047be0d855622676fd0ef888fe520a287385a52bf45"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/WaveAuth.xcframework.zip",
            checksum: "499d885d0ff0adf72a2628c5e5cd4394d985bf530eb3e2fad7904b144872d99c"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/WaveUI.xcframework.zip",
            checksum: "1ed67593b3070bda52b945d7416179d098d4c12bfbb376c3ee712e33c35a2755"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/FeatureHelp.xcframework.zip",
            checksum: "2343c82a99793194dfcadae738f9283d5816621413919265a66ce979cb8a7d36"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/FeatureActivation.xcframework.zip",
            checksum: "ae9dd8d2ce6b22887a8bf14a892d7ef4dbcb68f493685862e4f9ad43f7d75c36"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/DatadogCore.xcframework.zip",
            checksum: "e80a1372b8d7a7bc1cdad93ba3849d812c8e53dd2f4ed204803e215b81f36a6a"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/DatadogInternal.xcframework.zip",
            checksum: "e62680983c905cd03e6da2b01067c7fea801f9729d900c9ad977161158cd3818"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.12/DatadogRUM.xcframework.zip",
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
