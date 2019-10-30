//
//  SceneDelegate.swift
//  TestDynamicLinking
//
//  Created by Mattia Campolese on 30/10/2019.
//  Copyright © 2019 Mattia Campolese. All rights reserved.
//

import UIKit
import SwiftUI

#if canImport(ExampleJourney)
import ExampleJourney
// Create the SwiftUI view that provides the window contents.
let contentView = ContentView()
#else
// Create the SwiftUI view that provides the window contents.
let contentView = ContentView()

public struct ContentView: View {

    public init() {}

    public var body: some View {
        Text("Example empty")
    }
}

#endif

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }


}

