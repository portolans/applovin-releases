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
            url: "https://github.com/portolans/applovin-releases/releases/download/13.6.1/AppLovinSDK.xcframework.zip",
            checksum: "60cb3f0772b98bd6e1898d462861c5c790d59c698ea448974a9d32a51e556548",
        ),
    ],
)
