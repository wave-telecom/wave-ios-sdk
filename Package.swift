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
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/CoreStorage.xcframework.zip",
            checksum: "2dcb4a90a172851fbf9a4d2804feed8823c1c0f191dfc1ae8d5b0faf0e6c1182"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/CoreLogger.xcframework.zip",
            checksum: "d0f32aa470eb164e74a42b1c61796467f8ada286639fbf04345726eb37cc2e2b"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/CoreNetworking.xcframework.zip",
            checksum: "e0a35652970b866f49f4dfb75c1114d9411eef00e3842721594e57b2495d2035"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/CoreFormatters.xcframework.zip",
            checksum: "0fea12367f009f5180b6e73a183bbf682c9028eadff0bc756f9f0475d959ef46"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/SharedModels.xcframework.zip",
            checksum: "5a11da4a683af7d66284408c6b2260816e174d5f6a0688bd3a71142775a66913"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/CoreSession.xcframework.zip",
            checksum: "7746ffe3d8e32e12db5d5a3afd6b4fb0ef0667582ce7b4510736eda33d187678"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/WaveFoundation.xcframework.zip",
            checksum: "aa3ede8693449dd17b99bbb0c19e126bedfb739ec2e99cd221dba3c04837e14e"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/WaveAuth.xcframework.zip",
            checksum: "b6589c07e81d02d672400d84728397c03a0cf243d47c9ac99101ab1e827bb00b"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/WaveUI.xcframework.zip",
            checksum: "d6ca4549160d764a2cd867f3fc53f9e3b0361d03f69589fdbdacee7c5a63a007"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/FeatureHelp.xcframework.zip",
            checksum: "fba1bb0dad2a148a8960a3d7ca69a71bf72b7ae7281bb7fa7a7d79d39f88e98e"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/FeatureActivation.xcframework.zip",
            checksum: "9129d8add65e5baed6f629eaff8d5b73a5c407c4e5c32c3865556c0dbeb428e8"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/DatadogCore.xcframework.zip",
            checksum: "e80a1372b8d7a7bc1cdad93ba3849d812c8e53dd2f4ed204803e215b81f36a6a"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/DatadogInternal.xcframework.zip",
            checksum: "e62680983c905cd03e6da2b01067c7fea801f9729d900c9ad977161158cd3818"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/wave-telecom/wave-ios-sdk/releases/download/v0.6.17/DatadogRUM.xcframework.zip",
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
