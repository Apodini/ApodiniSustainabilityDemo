// swift-tools-version:5.5

//
// This source file is part of the Apodini Template open source project
//
// SPDX-FileCopyrightText: 2021 Paul Schmiedmayer and the project authors (see CONTRIBUTORS.md) <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import PackageDescription


let package = Package(
    name: "ApodiniSustainabilityDemo",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(
            name: "FlightBooking",
            targets: ["FlightBooking"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Apodini/Apodini.git", .upToNextMinor(from: "0.9.1")),
        .package(url: "https://github.com/Apodini/ApodiniSustainability.git", .branch("develop"))
    ],
    targets: [
        .executableTarget(
            name: "FlightBooking",
            dependencies: [
                .product(name: "Apodini", package: "Apodini"),
                .product(name: "ApodiniREST", package: "Apodini"),
                .product(name: "ApodiniSustainability", package: "ApodiniSustainability")
            ]
        ),
        .testTarget(
            name: "FlightBookingTests",
            dependencies: [
                .target(name: "FlightBooking")
            ]
        )
    ]
)
