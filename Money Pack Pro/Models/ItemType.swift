//
//  ItemType.swift
//  Money Pack Pro
//
//  Created by itthipon wiwatthanasathit on 10/13/2560 BE.
//  Copyright © 2560 Dev7. All rights reserved.
//

import Foundation
import UIKit

struct ItemType: Equatable {
  var nameImage: String
  var descImage: String
  var colorImage: UIColor
  
  static func ==(lhs: ItemType, rhs: ItemType) -> Bool {
    return lhs.nameImage == rhs.nameImage
      && lhs.descImage == lhs.descImage
  }
  
  
}
