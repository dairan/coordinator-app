//
//  ViewController.swift
//  CoordinatorApp
//
//  Created by dairan on 13/04/21.
//

import UIKit

class ViewController: UIViewController, Storyborded {

  weak var coordinator: PrincipalCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemOrange
  }

  @IBAction func criarContaButtonTap() {
    coordinator?.criarConta()
  }

  @IBAction func comprarButtonTap() {
     coordinator?.comprar()
  }
}

