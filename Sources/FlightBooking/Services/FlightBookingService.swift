//
// This source file is part of the Apodini open source project
//
// SPDX-FileCopyrightText: 2021 Paul Schmiedmayer and the project authors (see CONTRIBUTORS.md) <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import Apodini
import ApodiniSustainability

struct FlightBookingService: Component {
    
    struct FlightBooking: Handler {
        
        func handle() -> String {
            "✈️"
        }
    }
    
    var content: some Component {
        Group("flight-booking") {
            FlightBooking()
                .description("The flight booking service is executed when a customer selects a solution after the search microservice. It includes all the activities related to the booking, including configurations (e.g., seat selection, baggage options) and the interaction with the airline's information system.")
        }
    }
}
