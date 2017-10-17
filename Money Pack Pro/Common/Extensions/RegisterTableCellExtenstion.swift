//
//  MyUIViewExtenstion.swift
//  Jobtopgun
//
//  Created by Codemobiles on 9/26/2560 BE.
//  Copyright © 2560 TopGun. All rights reserved.
//

import Foundation
import UIKit

//MARK: - Reuse Identifier TableViewCell
protocol ReusableView: class{
  static var reuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {
  static var reuseIdentifier: String {
    return String(describing: self)
  }
}

extension UITableViewCell: ReusableView { }

//MARK: - Reuse NibName TableViewCell
protocol NibLoadableView: class{
  static var nibName: String { get }
}

extension NibLoadableView where Self: UIView {
  static var nibName: String {
    return String(describing: self)
  }
}

extension UITableViewCell: NibLoadableView { }

//MARK: - Register Nib TableView
extension UITableView {
  func register<T: UITableViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView  {
    let nib = UINib(nibName: T.nibName, bundle: nil)
    register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    
  }
}

//MARK: - Dequeue Reusable Cell TableView
extension UITableView {
  func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
    guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
      fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
    }
    return cell
  }
}
