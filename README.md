<!--

This source file is part of the Apodini Template open source project

SPDX-FileCopyrightText: 2021 Paul Schmiedmayer and the project authors (see CONTRIBUTORS.md) <paul.schmiedmayer@tum.de>

SPDX-License-Identifier: MIT

-->

# Apodini Sustainability Demo

This repository includes the `FlightBooking` Apodini web service that can be used to fetch sustainability-related metadata in the cloud-native sustainability demo.

## Structure

The web service exposes a RESTful web API and an additional endpoint that exposes sustainability-related metadata:  
```swift
import Apodini
import ArgumentParser
import ApodiniREST
import ApodiniSustainability

@main
struct FlightBooking: WebService {
        
    @OptionGroup
    var options: SustainabilityDocumentExportOptions
    
    var configuration: Configuration {
        REST()
        Sustainability(options)
    }
    
    var content: some Component {
        FlightSearchService()
            .serviceIdentifier("flight-search")
        WeatherInformationService()
            .serviceIdentifier("weather-information")
        FlightBookingService()
            .serviceIdentifier("flight-booking")
        RentalCarBookingService()
            .serviceIdentifier("rental-car-booking")
        PaymentService()
            .serviceIdentifier("payment")
    }
}
```

### RESTful API

You can access the `FlightBooking` web service at `http://localhost/`. The sustainability-related metadata is exposed at `http://localhost/sustainability`.

## Continuous Integration

The repository contains GitHub Actions to automatically build and test the `FlightBooking` web service on a wide variety of platforms and configurations.

### Docker

The repository includes docker files and docker compose files to start and deploy the web service. In addition, the repository includes a GitHub Action that builds a new docker image on every release and pushes the image to the GitHub package registry. You can start up the web service using published docker images using `$ docker compose up` using the `docker-compose.yml` file. The `docker-compose-development.yml` file can be used to test the setup by building the web service locally using `$ docker compose -f docker-compose-development.yml up`.  
