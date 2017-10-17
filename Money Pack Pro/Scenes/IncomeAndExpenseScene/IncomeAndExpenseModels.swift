//
//  IncomeAndExpenseModels.swift
//  Money Pack Pro
//
//  Created by itthipon wiwatthanasathit on 10/13/2560 BE.
//  Copyright (c) 2560 Dev7. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum IncomeAndExpense
{
  // MARK: Use cases
  
  enum FetchItemType
  {
    struct Request
    {
    }
    struct Response
    {
      var ItemTypes: [ItemType]
    }
    struct ViewModel
    {
      struct DisplayedItemType {
        var nameImage:  String
        var descImage: String
        var colorImage: UIColor
      }
      var displayedItemTypes: [DisplayedItemType]
    }
  }
}
