//
//  AppLayer.swift
//  AppLayer
//
//  Created by Mattia Campolese on 30/10/2019.
//  Copyright © 2019 Mattia Campolese. All rights reserved.
//

import Foundation
import protocol CoreModels.ExampleMessageProvider
#if canImport(ExampleJourneyIntegration)
import ExampleJourneyIntegration
let defaultMessageProvider: ExampleMessageProvider = ExampleJourneyIntegration()
#else
struct InactiveMessageProvider: ExampleMessageProvider {
    var message: String {
       "Inactive path"
    }
}
let defaultMessageProvider: ExampleMessageProvider = InactiveMessageProvider()
#endif

public struct AppLayer {

    public static var message: String {
        defaultMessageProvider.message
    }

}
