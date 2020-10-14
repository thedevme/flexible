//
//  Palette+Color.swift
//  Financial App
//
//  Created by Craig Clayton on 11/20/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Foundation

extension Color {
    static let baseLightGray = Color("lavender_gray")
    static let baseMediumGray = Color("medium_jungle_green")
    static let baseDarkGray = Color("dark_gray")
    static let baseBlack = Color("onyx")
    static let baseCharcoal = Color("charcoal")
    static let baseLightBlue = Color("electric_blue")
    static let baseMediumBlue = Color("verdigris")
    static let baseBackground = Color("background")
    static let baseCardBackground = Color("card_background")
    
}

extension UIColor {
    static let baseLightGray = Color(named: "lavender_gray")
    static let baseMediumGray = Color(named: "medium_jungle_green")
    static let baseDarkGray = Color(named: "dark_gray")
    static let baseBlack = Color(named: "onyx")
    static let baseCharcoal = Color(named: "charcoal")
    static let baseLightBlue = Color(named: "electric_blue")
    static let baseMediumBlue = Color(named: "verdigris")
    static let baseBackground = Color(named: "background")
    static let baseCardBackground = Color(named: "card_background")
    
    

    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}

