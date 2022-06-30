//
// This source file is part of the Apodini open source project
//
// SPDX-FileCopyrightText: 2021 Paul Schmiedmayer and the project authors (see CONTRIBUTORS.md) <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

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
