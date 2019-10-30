//
//  ExampleJourneyIntegration.swift
//  ExampleJourneyIntegration
//
//  Created by Mattia Campolese on 30/10/2019.
//  Copyright © 2019 Mattia Campolese. All rights reserved.
//

#if canImport(ExampleJourney)
import ExampleJourney
let defaultMessage = JourneyMessage.message
#else
let defaultMessage = "Just the wrapper"
#endif

import Foundation

public class ExampleJourneyIntegration {

    public static var message: String {
        return defaultMessage
    }

}
