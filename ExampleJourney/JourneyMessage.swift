//
//  JourneyMessage.swift
//  TestDynamicLinking
//
//  Created by Mattia Campolese on 30/10/2019.
//  Copyright © 2019 Mattia Campolese. All rights reserved.
//

import Foundation
import UIKit

public class JourneyMessage {

    public static var message: String {

        let bundle = Bundle.init(for: JourneyMessage.self)
        
        guard UIImage(named: "VittoriaEPapi", in: bundle, compatibleWith: nil) != nil else {
            fatalError("Assets not copied")
        }

        return "Example JOURNEY"
    }

}
