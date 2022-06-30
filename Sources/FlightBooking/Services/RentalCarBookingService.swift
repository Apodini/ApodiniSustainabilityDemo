//
// This source file is part of the Apodini open source project
//
// SPDX-FileCopyrightText: 2021 Paul Schmiedmayer and the project authors (see CONTRIBUTORS.md) <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import Apodini
import ApodiniSustainability

struct RentalCarBookingService: Component {
    
    struct RentalCarBooking: Handler {
        
        func handle() -> String {
            "🚙"
        }
        
        var metadata: Metadata {
            Optional()
        }
    }
    
    var content: some Component {
        Group("rental-car-booking") {
            RentalCarBooking()
                .description("The rental car booking service is proposed to the customer as an additional service. This service is provided by a partner but generates an income for the organization in case the customer books a vehicle.")
        }
    }
}
