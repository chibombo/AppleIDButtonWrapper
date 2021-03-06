// swift-tools-version:5.3
//
//  Package.swift
//  AppleIDButtonWrapper
//
//  Created by Genaro Arvizu on 04/10/20.
//  Copyright © 2020 Luis Genaro Arvizu Vega. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "AppleSignInWrapper",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "AppleSignInWrapper",
            targets: ["AppleSignInWrapper"])
    ],
    targets: [

        .target(
            name: "AppleSignInWrapper",
            path: "Sources",
            exclude:["Info.plist"],
            linkerSettings: [.linkedFramework("AuthenticationServices",
                                              .when(platforms: [.iOS])),
                             .linkedFramework("CryptoKit", .when(platforms: [.iOS]))
            ]),
        .testTarget(
            name: "AppleSignInWrapperTests",
            dependencies: ["AppleSignInWrapper"])
    ]
)
