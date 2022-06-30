//
// This source file is part of the Apodini open source project
//
// SPDX-FileCopyrightText: 2021 Paul Schmiedmayer and the project authors (see CONTRIBUTORS.md) <paul.schmiedmayer@tum.de>
//
// SPDX-License-Identifier: MIT
//

import Apodini
import ApodiniSustainability

struct PaymentService: Component {
    
    struct Payment: Handler {
        
        func handle() -> String {
            "💳"
        }
    }
    
    var content: some Component {
        Group("payment") {
            Payment()
                .description("The payment service manages all the activities related to the payment of the selected flight solution.")
        }
    }
}
