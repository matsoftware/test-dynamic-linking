//
//  AppLayer.swift
//  AppLayer
//
//  Created by Mattia Campolese on 30/10/2019.
//  Copyright © 2019 Mattia Campolese. All rights reserved.
//

import Foundation
#if canImport(ExampleJourneyIntegration)
import ExampleJourneyIntegration
let defaultMessage = ExampleJourneyIntegration.currentMessage
#else
let defaultMessage = "Journey not linked"
#endif

public struct AppLayer {

    public static var message: String {
        defaultMessage
    }

}

public protocol ExampleMessage {

    var message: String { get }

}
