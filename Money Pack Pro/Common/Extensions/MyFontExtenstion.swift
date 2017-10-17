//
//  MyFontExtenstion.swift
//  DuoShare
//
//  Created by itthipon wiwatthanasathit on 9/23/2560 BE.
//  Copyright © 2560 Dev7. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    
    private enum MyFont: String {
        case RobotoWebBold = "RobotoWeb-Bold"
        case RobotoWebRegular = "RobotoWeb-Regular"
    }
    private static let defaultFont = UIFont.systemFont(ofSize: 17.0)
    
    static func fontForHeader() -> UIFont {
        return UIFont(name: MyFont.RobotoWebBold.rawValue, size: 20.0) ?? defaultFont
    }
    
    static func fontForText() -> UIFont {
        return UIFont(name: MyFont.RobotoWebRegular.rawValue, size: 18.0) ?? defaultFont
    }
  
}
