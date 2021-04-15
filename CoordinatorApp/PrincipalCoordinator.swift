//
//  PrincipalCoordinator.swift
//  CoordinatorApp
//
//  Created by dairan on 13/04/21.
//

import UIKit

class PrincipalCoordinator: Coordinator {
  // MARK: Lifecycle

  init(navController: UINavigationController) {
    self.navController = navController
  }

  // MARK: Internal

  var filhosCoordinator: [Coordinator] = []

  var navController: UINavigationController

  func iniciar() {
    let vc = LoginViewController()
    vc.coordinator = self
    navController.pushViewController(vc, animated: false)
  }

  func principalScreen() {
    let vc = PrincipalViewController()
    vc.coordinator = self
    navController.pushViewController(vc, animated: true)
  }

  func lembrarSenha() {
    let vc = LembrarSenhaViewController()
    navController.pushViewController(vc, animated: true)
  }

}
