//
//  IncomeAndExpensePresenter.swift
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

protocol IncomeAndExpensePresentationLogic
{
  func presentFetchedItemType(response: IncomeAndExpense.FetchItemType.Response)
}

class IncomeAndExpensePresenter: IncomeAndExpensePresentationLogic
{
  weak var viewController: IncomeAndExpenseDisplayLogic?
  
  func presentFetchedItemType(response: IncomeAndExpense.FetchItemType.Response)
  {
    var displayedItemtypes: [IncomeAndExpense.FetchItemType.ViewModel.DisplayedItemType] = []
    for  itemType in response.ItemTypes {
      let displayedItemType = IncomeAndExpense.FetchItemType.ViewModel.DisplayedItemType(nameImage: itemType.nameImage, descImage: itemType.descImage, colorImage: itemType.colorImage)
      displayedItemtypes.append(displayedItemType)
    }
    let viewModel = IncomeAndExpense.FetchItemType.ViewModel(displayedItemTypes: displayedItemtypes)
    viewController?.displayFetchedItemTypes(viewModel: viewModel)
  }
}
