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
            url: "https://github.com/portolans/applovin-releases/releases/download/13.6.0/AppLovinSDK.xcframework.zip",
            checksum: "eee2075d25270c98f787370e3b96e7767fed27c57e29efeface3186b43c9eb03",
        ),
    ],
)
