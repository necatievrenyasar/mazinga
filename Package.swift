// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnboardSPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OnboardSPM",
            targets: ["OnboardSPM"]),
        
    ],
    dependencies: [
        .package(url: "https://github.com/jitsi/webrtc", branch: "master"),
        .package(url: "https://github.com/Giphy/giphy-ios-sdk", from: "2.2.6"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
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
        
        .testTarget(
            name: "OnboardSPMTests",
            dependencies: ["OnboardSPM"]),
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
