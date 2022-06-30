//
// This source file is part of the Apodini open source project
//
// SPDX-FileCopyrightText: 2021 Paul Schmiedmayer and the project authors (see CONTRIBUTORS.md) <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import Apodini
import ApodiniSustainability

struct FlightSearchService: Component {
    
    struct FlightSearch: Handler {
        
        func handle() -> String {
            "🔎"
        }
        
        var metadata: Metadata {
            ResponseTime(value: 10)
            InstanceType(.medium)
        }
    }
    
    struct RecommendationFlightSearch: Handler {
        
        func handle() -> String {
            "🔎"
        }
        
        var metadata: Metadata {
            ExecutionModality(.highPerformance)
            ResponseTime(value: 100)
            InstanceType(.large)
        }
    }
    
    struct RecentFlightSearch: Handler {
        
        func handle() -> String {
            "🔎"
        }
        
        var metadata: Metadata {
            ExecutionModality(.lowPower)
            ResponseTime(value: 1)
            InstanceType(.small)
        }
    }
    
    var content: some Component {
        Group("flight-search") {
            Group() {
                FlightSearch()
                    .description("The flight search service handles the search request of the customer and returns a list of flights by querying the information systems of the airlines. The order of the results depends on the properties of the flights (e.g., price, duration, number of stops).")
            }
            Group("recommendation") {
                RecommendationFlightSearch()
                    .description("The information in the customer profile is used to suggest routes or rank the results. This variation improves the customer experience but increases the computational cost of the service.")
            }
            Group("recent") {
                RecentFlightSearch()
                    .description("Results of recent searches by the same or other users are reused and the actual query is executed on-demand. This reduces the computation time and cost but generates out-of-date results (e.g., prices of tickets for an airline).")
            }
        }
    }
}
