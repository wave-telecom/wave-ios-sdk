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
    ],
    targets: [
        .binaryTarget(
            name: "CoreStorage",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/CoreStorage.xcframework.zip",
            checksum: "d2cfb0971dd5493a0539c8764b01ab095fda26a3ca0475aa8c22dea6a23ae6a6"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/CoreLogger.xcframework.zip",
            checksum: "192d62c5ce59468833c7ed47974b1cd415d83eb5fe67ab91c28aaa91f7b5d528"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/CoreNetworking.xcframework.zip",
            checksum: "5fbf35a44ce3ef068b5e50594456c852df657149f9b2b0934ad6850b8dcebd76"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/CoreFormatters.xcframework.zip",
            checksum: "6e2897e07eab3b5ef962394a19e3342dc2f3bb4fc34f33fcaab1b97b7e3d3732"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/SharedModels.xcframework.zip",
            checksum: "b20050da90c284c384c55a90784150708234fc1454da06104fc1d971309c163f"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/CoreSession.xcframework.zip",
            checksum: "59a0dd9eaed5d17cb945afc8e84b8d0890676355def2c7cfd12cd4f6117f92d5"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/WaveFoundation.xcframework.zip",
            checksum: "bf4f9a315d0d0622750ad2c36b42ec1931a57ff55de274e49dab5f4ceb77f35b"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/WaveAuth.xcframework.zip",
            checksum: "ab666b907f916bc28313211a1f80f259907c8055fe02349e0a0a8f30a1a5a202"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/WaveUI.xcframework.zip",
            checksum: "2b6090f9bc1210209c342709e47f8b054ec316294469332951154c619abdde03"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/FeatureActivation.xcframework.zip",
            checksum: "10807ef54090be5c5b4a85040dc8627bf4a647a80a66067b2dd26bfd3e21338b"
        ),
        .binaryTarget(
            name: "IzziComponents",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.5.0/IzziComponents.xcframework.zip",
            checksum: "089eda55a2686b9dddf24a459a841d247b8ec259b7d0719a1b166ae663e287d8"
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
                .product(name: "Dependencies", package: "swift-dependencies"),
            ]
        )
    ]
)