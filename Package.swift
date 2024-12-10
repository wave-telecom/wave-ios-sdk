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
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/CoreStorage.xcframework.zip",
            checksum: "063a5d4fe2acd33dfe49da91887b8836a7c5a2d0aa35de6af5fcb697715b209c"
        ),
        .binaryTarget(
            name: "CoreLogger",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/CoreLogger.xcframework.zip",
            checksum: "145bc24684ba4c75a1704c06704ed1caac8fbfc8f067312f10164891957902f4"
        ),
        .binaryTarget(
            name: "CoreNetworking",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/CoreNetworking.xcframework.zip",
            checksum: "fd6fef8160ed934412c7097c2689a6863fe2a03f45e14a45e33559253637cc31"
        ),
        .binaryTarget(
            name: "CoreFormatters",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/CoreFormatters.xcframework.zip",
            checksum: "1256bbd2ad44cad375d527a06df7f27da9916e26abf803844f78833c0b1563ad"
        ),
        .binaryTarget(
            name: "SharedModels",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/SharedModels.xcframework.zip",
            checksum: "6706dc46521d05ebca3026d81c563e5ba65b685160b77d1900ba577c26113d68"
        ),
        .binaryTarget(
            name: "CoreSession",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/CoreSession.xcframework.zip",
            checksum: "5b7c78ae85dfde883492522a3cf46760e783d4d7608009affa62d781fe45e286"
        ),
        .binaryTarget(
            name: "WaveFoundation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/WaveFoundation.xcframework.zip",
            checksum: "ad854fc4d5fba6f3ffe1651d73e9121b4e7c4c0bbcc0fb608734c70db2fdc98a"
        ),
        .binaryTarget(
            name: "WaveAuth",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/WaveAuth.xcframework.zip",
            checksum: "53231af8884121aea980df8590af288817afc87c059665f90777be3de2a5fb36"
        ),
        .binaryTarget(
            name: "WaveUI",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/WaveUI.xcframework.zip",
            checksum: "97ec6a563ff062a85d5b11449dbb2627f9665ec900c7be398e6f8922e06e39f5"
        ),
        .binaryTarget(
            name: "FeatureHelp",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/FeatureHelp.xcframework.zip",
            checksum: "d536a9cc49b058aca6ea750a8cf18d5b61e9cb0cb51200dac15231bb35f3484f"
        ),
        .binaryTarget(
            name: "FeatureActivation",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/FeatureActivation.xcframework.zip",
            checksum: "a0eecf74a0346158c56cf89880fc6c1e32274c1c1e24ee6fade173efbb4464d2"
        ),
        .binaryTarget(
            name: "DatadogCore",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/DatadogCore.xcframework.zip",
            checksum: "60ca06e9f75f7d2f88a436f1faa49c6302bb7d21f915123564843d66605a0702"
        ),
        .binaryTarget(
            name: "DatadogInternal",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/DatadogInternal.xcframework.zip",
            checksum: "2fe2efa593fa189168446f8f085881883c6088cc24e32f052b972a656a371033"
        ),
        .binaryTarget(
            name: "DatadogRUM",
            url: "https://github.com/NomoTechnology/wave-ios-sdk/releases/download/v0.6.2/DatadogRUM.xcframework.zip",
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