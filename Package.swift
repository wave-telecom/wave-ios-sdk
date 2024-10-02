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
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/CoreStorage.xcframework.zip",
            checksum: "d2cfb0971dd5493a0539c8764b01ab095fda26a3ca0475aa8c22dea6a23ae6a6"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/CoreLogger.xcframework.zip",
            checksum: "192d62c5ce59468833c7ed47974b1cd415d83eb5fe67ab91c28aaa91f7b5d528"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/CoreNetworking.xcframework.zip",
            checksum: "5fbf35a44ce3ef068b5e50594456c852df657149f9b2b0934ad6850b8dcebd76"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/CoreFormatters.xcframework.zip",
            checksum: "6e2897e07eab3b5ef962394a19e3342dc2f3bb4fc34f33fcaab1b97b7e3d3732"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/SharedModels.xcframework.zip",
            checksum: "8c9c48a70afce78021c7f6359a50d600bd7dff0736939c57e65bb36bb5956226"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/CoreSession.xcframework.zip",
            checksum: "4dc71f5e094e0c52aa3148d8bcd21e4836dd7e0c4eb5cc2994259bed519c556f"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/WaveFoundation.xcframework.zip",
            checksum: "c38dc7ed20fc45370615be614cd72423c5a202871bd525422bf9c54fec7269dc"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/WaveAuth.xcframework.zip",
            checksum: "4f6409cfb17b0234f925b3639cdc4018be9e8dbf7475e71324189d2873e332ce"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/WaveUI.xcframework.zip",
            checksum: "2b6090f9bc1210209c342709e47f8b054ec316294469332951154c619abdde03"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/FeatureActivation.xcframework.zip",
            checksum: "851b83b7d353b446ba480f54ec2e3cf444da4b7acf6a814b4ebdc5778e251fc0"
        ),
        .binaryTarget(
            name: "IzziComponents",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.4.12/IzziComponents.xcframework.zip",
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