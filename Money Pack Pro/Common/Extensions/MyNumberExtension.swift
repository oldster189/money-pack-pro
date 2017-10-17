//
//  MyNumberExtension.swift
//  Money Pack Pro
//
//  Created by itthipon wiwatthanasathit on 10/17/2560 BE.
//  Copyright © 2560 Dev7. All rights reserved.
//

import Foundation

extension Double {
  func format(f: String) -> String {
    return String(format: "%.\(f)f",locale:Locale.current, self)
  }
}
