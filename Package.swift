// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "GTMAppAuth",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v8),
        .tvOS(.v9),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "GTMAppAuth",
            targets: ["GTMAppAuth"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/maxgoedjen/AppAuth-iOS.git", branch: "nullability"),
        .package(url: "https://github.com/google/gtm-session-fetcher.git", from: "1.4.0"),
    ],
    targets: [
        .target(
            name: "GTMAppAuth",
            dependencies: [
                "AppAuth",
                "GTMSessionFetcher"
            ],
            path: "Source",
            sources:[
                "GTMAppAuth.h",
                "GTMAppAuthFetcherAuthorization.h",
                "GTMAppAuthFetcherAuthorization.m",
                "GTMAppAuthFetcherAuthorization+Keychain.h",
                "GTMAppAuthFetcherAuthorization+Keychain.m",
                "GTMKeychain.h",
                "iOS/GTMKeychain_iOS.m"
            ],
            publicHeadersPath: "SwiftPackage"
        )
    ]
)
