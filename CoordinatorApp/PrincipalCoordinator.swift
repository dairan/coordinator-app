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
    let vc = ViewController.instanciar()
    vc.coordinator = self
    navController.pushViewController(vc, animated: false)
  }

  func comprar() {
    let vc = ComprarViewController.instanciar()
    vc.coordinator = self
    navController.pushViewController(vc, animated: true)
  }

  func criarConta() {
    let vc = CriarContaViewController.instanciar()
    navController.pushViewController(vc, animated: true)
  }


}
