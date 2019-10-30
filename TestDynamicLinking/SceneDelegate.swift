//
//  SceneDelegate.swift
//  TestDynamicLinking
//
//  Created by Mattia Campolese on 30/10/2019.
//  Copyright © 2019 Mattia Campolese. All rights reserved.
//

import UIKit
import SwiftUI
import Foundation

public struct ContentView: View {

    public var message: String = AppLayer.message

    public init() {}

    public var body: some View {
        Text(message)
    }
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)

            let contentView = ContentView()
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }


}

