//
//  Integrations.swift
//  TestDynamicLinking
//
//  Created by Mattia Campolese on 30/10/2019.
//  Copyright © 2019 Mattia Campolese. All rights reserved.
//

import Foundation
import struct AppLayer.AppInitializer
import protocol CoreModels.ExampleMessageProvider
#if canImport(ExampleJourneyIntegration)
import ExampleJourneyIntegration
private let defaultMessageProvider: ExampleMessageProvider = ExampleJourneyIntegration()
#else
private struct InactiveMessageProvider: ExampleMessageProvider {}
private let defaultMessageProvider: ExampleMessageProvider = InactiveMessageProvider()
#endif

let appInitializer = AppLayer.AppInitializer(exampleMessageProvider: defaultMessageProvider)
