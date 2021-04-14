//
//  Coordinator.swift
//  CoordinatorApp
//
//  Created by dairan on 13/04/21.
//

import UIKit

protocol Coordinator: AnyObject {
  var filhosCoordinator: [Coordinator] { get set }
  var navController: UINavigationController { get set }
  func iniciar() 
}
