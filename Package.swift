// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "wave-sdk",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "CoreNetworking", targets: ["CoreNetworking"]),
        .library(name: "CoreLogger", targets: ["CoreLogger"]),
        .library(name: "CoreStorage", targets: ["CoreStorage"]),
        .library(name: "CoreFormatters", targets: ["CoreFormatters"]),
        .library(name: "SharedModels", targets: ["SharedModels"]),
        .library(name: "CoreSession", targets: ["CoreSession"]),
        .library(name: "CoreTestSupport", targets: ["CoreTestSupport"]),
        .library(name: "WaveFoundation", targets: ["WaveFoundation"]),
        .library(name: "FeatureActivation", targets: ["FeatureActivation"]),
        .library(name: "WaveUI", targets: ["WaveUI"]),
        .library(name: "WaveSDK", targets: ["WaveSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apollographql/apollo-ios", from: "1.10.0")
    ],
    targets: [
        .binaryTarget(
            name: "CoreNetworking",
            path: "../mobile-client-ios/Modules/CoreNetworking/build/CoreNetworking.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreNetworking.xcframework.zip",
            // checksum: "79e8cac9cc6bd381680775c3d930f3f3bfe34aed3cab5c470082d332f135cae5"
        ),
        .binaryTarget(
            name: "CoreLogger",
            path: "../mobile-client-ios/Modules/CoreLogger/build/CoreLogger.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreLogger.xcframework.zip",
            // checksum: "8478e62719b3fe801a247282c92dceea12246dcde75528a3788f4ac532b38a19"
        ),
        .binaryTarget(
            name: "CoreStorage",
            path: "../mobile-client-ios/Modules/CoreStorage/build/CoreStorage.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreStorage.xcframework.zip",
            // checksum: "004b259ec2cab726ef78c630f43d0c21b1a747ea9aa04f0702bfcb6855dfe397"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            path: "../mobile-client-ios/Modules/CoreFormatters/build/CoreFormatters.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreFormatters.xcframework.zip",
            // checksum: "6ccdbb00f809415e54176125761d977cd1e989b2c1f3705260c227d26a0acc86"
        ),
        .binaryTarget(
            name: "SharedModels",
            path: "../mobile-client-ios/Modules/SharedModels/build/SharedModels.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/SharedModels.xcframework.zip",
            // checksum: "1adf1e03990f150555bc1397bfcac8e8b7362db2b7e8fc255fa37f7bc3cd5cb5"
        ),
        .binaryTarget(
            name: "CoreSession",
            path: "../mobile-client-ios/Modules/CoreSession/build/CoreSession.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreSession.xcframework.zip",
            // checksum: "4c6883c41aeccbafbe7324530501d434caff6a0742f1ac2e9b010ae2f7ac5295"
        ),
        .binaryTarget(
            name: "CoreTestSupport",
            path: "../mobile-client-ios/Modules/CoreSession/build/CoreTestSupport.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/CoreTestSupport.xcframework.zip",
            // checksum: "19856c64e7f4894ed7ef584fa4a450e18a2b79a7d631bd215d999e533ae2b480"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            path: "../mobile-client-ios/Modules/WaveFoundation/build/WaveFoundation.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/WaveFoundation.xcframework.zip",
            // checksum: "b03d241c5d7e19e4681b04816f674547cfeae70888e058ee190a7f05063d4665"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            path: "../mobile-client-ios/Modules/FeatureActivation/build/FeatureActivation.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/FeatureActivation.xcframework.zip",
            // checksum: "1baef62f3ed8c3a47989f613eebf9d073b77128c502882ea38eb7d1e4e13de08"
        ),
        .binaryTarget(
            name: "WaveUI",
            path: "../mobile-client-ios/Modules/WaveUI/build/WaveUI.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/WaveUI.xcframework.zip",
            // checksum: "26de3a76c2073a7dd67d0372ddae0621e15a3e9036dd824bf3e797d3af6f4009"
        ),
        .binaryTarget(
            name: "WaveSDK",
            path: "../mobile-client-ios/Modules/WaveSDK/build/WaveSDK.xcframework.zip"
            // url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.1.1/WaveSDK.xcframework.zip",
            // checksum: "06b50952323b3d7b0716ffa372cdad6b3d86ab4f8b050b4d1c7d24529595c8bb"
        )
    ]
)