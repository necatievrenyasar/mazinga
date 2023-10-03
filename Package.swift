// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnboardSPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "OnboardSPM",
            targets: ["OnboardSPM"]),
        
    ],
    dependencies: [
        .package(url: "https://github.com/jitsi/webrtc", branch: "master"),
        .package(url: "https://github.com/Giphy/giphy-ios-sdk", from: "2.2.6"),
    ],
    targets: [
        .target(
            name: "OnboardSPM",
            dependencies: [
                "JitsiMeetSDK",
                "NFCReaderApple",
                "onboarding",
                "OpenSSL",
                .product(name: "GiphyUISDK", package: "giphy-ios-sdk"),
                .product(name: "WebRTC", package: "webrtc"),
            ]),
        .binaryTarget(
            name: "JitsiMeetSDK",
            path: "Sources/JitsiMeetSDK.xcframework"),
        .binaryTarget(
            name: "NFCReaderApple",
            path: "Sources/NFCReaderApple.xcframework"),
        .binaryTarget(
            name: "onboarding",
            path: "Sources/onboarding.xcframework"),
        .binaryTarget(
            name: "OpenSSL",
            path: "Sources/OpenSSL.xcframework"),
    ]
)
