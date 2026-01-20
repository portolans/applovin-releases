// swift-tools-version:6.2
import PackageDescription

let package = Package(
    name: "AppLovinSDK",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "AppLovinSDK",
            targets: ["AppLovinSDK"],
        ),
    ],
    targets: [
        .target(
            name: "AppLovinSDK",
            dependencies: ["AppLovinSDKBinary"],
            resources: [.copy("Resources/PrivacyInfo.xcprivacy")],
        ),
        .binaryTarget(
            name: "AppLovinSDKBinary",
            url: "https://github.com/portolans/applovin-releases/releases/download/13.5.1/AppLovinSDK.xcframework.zip",
            checksum: "ffd2c8b7ac5ad3ae1f0cc52e68212d5d788f679766bafc9780ada64eeafb3497",
        ),
    ],
)
