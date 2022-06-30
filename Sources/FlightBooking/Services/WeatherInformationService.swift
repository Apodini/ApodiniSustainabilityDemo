//
// This source file is part of the Apodini open source project
//
// SPDX-FileCopyrightText: 2021 Paul Schmiedmayer and the project authors (see CONTRIBUTORS.md) <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import Apodini
import ApodiniSustainability

struct WeatherInformationService: Component {
    
    struct WeatherInformation: Handler {
        
        func handle() -> String {
            "🌦"
        }

        var metadata: Metadata {
            Optional()
        }
    }
    
    var content: some Component {
        Group("weather-information") {
            WeatherInformation()
                .description("The search service can be complemented with information useful to the customers in selecting their itinerary. A weather service shows forecasts and statistics of temperatures and precipitations for the selected destination and dates that can be valuable for the customer.")
        }
    }
}
