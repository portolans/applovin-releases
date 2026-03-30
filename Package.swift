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
            url: "https://github.com/portolans/applovin-releases/releases/download/13.6.2/AppLovinSDK.xcframework.zip",
            checksum: "8d27bc68fb0c37d0be0723254968fbc89e35164a8a9e28bbc96958222f5e5f99",
        ),
    ],
)
