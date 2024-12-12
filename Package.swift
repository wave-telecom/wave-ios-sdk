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
        .package(url: "https://github.com/pointfreeco/swift-dependencies.git", from: "1.2.2"),
        .package(url: "https://github.com/pointfreeco/swift-case-paths.git", from: "1.5.5"),
    ],
    targets: [
        .binaryTarget(
            name: "CoreStorage",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/CoreStorage.xcframework.zip",
            checksum: "58f6c881db81329c1ba67c6ce6b48bece7a904e81af47be1adcbb06346cbe0da"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/CoreLogger.xcframework.zip",
            checksum: "8aa66dfcc9b6763a8f23566101ceff8e41ca5cd815074f61d7a82519dee68d39"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/CoreNetworking.xcframework.zip",
            checksum: "28c5421973c1898a221127ea012be75644ab413beb9b72b0fbc3350b257195b3"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/CoreFormatters.xcframework.zip",
            checksum: "af27248f6b870daa0db9525f8fd53ab8b4058a24e45a1048ea0f2b6391b7ea14"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/SharedModels.xcframework.zip",
            checksum: "e82f7f1617518c2fc013982017181ae91807036a299395cfdea8ebb9e341f9ca"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/CoreSession.xcframework.zip",
            checksum: "24011e96b8cb0bb6648b910506dd63cdff584a18923b908809e3e7f93c9cf02c"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/WaveFoundation.xcframework.zip",
            checksum: "f219b449a974fcd4ea5b5ee4f36434143f2325b2f0c9e59b8dc416d42635070e"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/WaveAuth.xcframework.zip",
            checksum: "2517661b5cf8d9436510f66acf4d0f7b0dc374f11834f521f2e363d24afe46d3"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/WaveUI.xcframework.zip",
            checksum: "76b86322cb2d8b57260054f485c07ff5579d272621a9c679dbae082ac1477187"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/FeatureHelp.xcframework.zip",
            checksum: "a375d155a1eeba68df8ca30687140d6c09e8df427128a952f74146d473a5ad4f"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/FeatureActivation.xcframework.zip",
            checksum: "216e562c865fcf35c2c2dc7f335b24f4eea916205dd7b3e38824b283b2cec2c2"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/DatadogCore.xcframework.zip",
            checksum: "60ca06e9f75f7d2f88a436f1faa49c6302bb7d21f915123564843d66605a0702"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/DatadogInternal.xcframework.zip",
            checksum: "2fe2efa593fa189168446f8f085881883c6088cc24e32f052b972a656a371033"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.3/DatadogRUM.xcframework.zip",
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
                .product(name: "Dependencies", package: "swift-dependencies"),
                .product(name: "CasePaths", package: "swift-case-paths"),
            ]
        )
    ]
)