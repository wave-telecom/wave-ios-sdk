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
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/CoreStorage.xcframework.zip",
            checksum: "6d7ac057f50a5fc652dd045efa4823c8d150d1c5c9073b74ce2b2c0cf653583b"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/CoreLogger.xcframework.zip",
            checksum: "c99296604980d8a2c1d8024ab8220a23b01125005d55d00ce7c62fe67aadd2d1"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/CoreNetworking.xcframework.zip",
            checksum: "336c9afc2d4e5a812ba1b2126f082d4cd0a8f9d62a47b2386a51d7d1835ba9ff"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/CoreFormatters.xcframework.zip",
            checksum: "1091cce3ab5924339d7d3db6e0b4f51764ffba16e6b15d0699e51bf2a0eca059"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/SharedModels.xcframework.zip",
            checksum: "ef5103c02bc6e5e0f8b223582bbbed8519489f064018d958a52bbc97c97a2a09"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/CoreSession.xcframework.zip",
            checksum: "a39ee5fd2ca105672428fc5156c8a973b801caff841f852ca650e025ef191dac"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/WaveFoundation.xcframework.zip",
            checksum: "15d76cffb1d09b30941d05defebfbb11d1f36ed121046502e43fcc90ab77bc14"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/WaveAuth.xcframework.zip",
            checksum: "3a0cad0a2ac40c8cc961bd1eadf11a3b56b48d9451b1e6ad9fefdafbbd0ce000"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/WaveUI.xcframework.zip",
            checksum: "488f45b0e16b6c91911c4115239e7f7878279f5d5cbfdfd220f1c73eacd39429"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/FeatureActivation.xcframework.zip",
            checksum: "96108af1f3cf9254b3de7d4df7592cfd987d981198df81c26cf1e00536d13091"
        ),
        .binaryTarget(
            name: "IzziComponents",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.4/IzziComponents.xcframework.zip",
            checksum: "f223c682e25fa1900bd44db977ba607fa8a764ff58a6d9b19e0bfe629025856c"
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