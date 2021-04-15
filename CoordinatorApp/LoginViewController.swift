//
//  ViewController.swift
//  CoordinatorApp
//
//  Created by dairan on 13/04/21.
//

import UIKit

class LoginViewController: UIViewController {
  // MARK: Internal

  weak var coordinator: PrincipalCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func loadView() {
    loginView = LoginView(coordinator: coordinator)
    view = loginView
  }

  // MARK: Private

  private var loginView: LoginView!

}

