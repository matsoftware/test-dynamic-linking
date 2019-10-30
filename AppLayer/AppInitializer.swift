//
//  AppInitializer.swift
//  AppLayer
//
//  Created by Mattia Campolese on 30/10/2019.
//  Copyright © 2019 Mattia Campolese. All rights reserved.
//

import Foundation
import SwiftUI
import protocol CoreModels.ExampleMessageProvider

public struct AppInitializer {

    public let exampleMessageProvider: CoreModels.ExampleMessageProvider

    public init(exampleMessageProvider: CoreModels.ExampleMessageProvider) {
        self.exampleMessageProvider = exampleMessageProvider
    }

    public var contentView: ContentView {
        ContentView(message: exampleMessageProvider.message)
    }

}


public struct ContentView: View {

    let message: String

    public init(message: String) {
        self.message = message
    }

    public var body: some View {
        Text(message)
    }
}
