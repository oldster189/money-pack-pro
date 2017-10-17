//
//  MyBundleExtenstion.swift
//  DuoShare
//
//  Created by itthipon wiwatthanasathit on 9/23/2560 BE.
//  Copyright © 2560 Dev7. All rights reserved.
//

import Foundation

extension Bundle {
    
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    
}
