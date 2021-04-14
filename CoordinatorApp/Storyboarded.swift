//
//  Storyboarded.swift
//  CoordinatorApp
//
//  Created by dairan on 13/04/21.
//

import UIKit


protocol Storyborded {
  static func instanciar() -> Self
}

extension Storyborded where Self: UIViewController {
  static func instanciar() -> Self {
    let id = String(describing: self)
    let sb = UIStoryboard.init(name: "Main", bundle: Bundle.main)
    return sb.instantiateViewController(identifier: id)
  }
}
