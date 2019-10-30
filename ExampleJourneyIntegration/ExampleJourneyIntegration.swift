//
//  ExampleJourneyIntegration.swift
//  ExampleJourneyIntegration
//
//  Created by Mattia Campolese on 30/10/2019.
//  Copyright © 2019 Mattia Campolese. All rights reserved.
//

import Foundation
import ExampleJourney
import protocol CoreModels.ExampleMessageProvider

public struct ExampleJourneyIntegration: ExampleMessageProvider {

    public init() {}

    public var message: String {
        JourneyMessage.message
    }


}
