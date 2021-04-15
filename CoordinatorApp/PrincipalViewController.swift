//
//  PrincipalViewController.swift
//  CoordinatorApp
//
//  Created by dairan on 14/04/21.
//

import UIKit

class PrincipalViewController: UIViewController {
  // MARK: Internal

  weak var coordinator: PrincipalCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .systemPink
    configurarLabel()
    configurarConstraits()
  }

  // MARK: Private

  private var minhaLabel = DTFLabel()

  private func configurarLabel() {
    minhaLabel.text = "Tela de usuário logado"
    view.addSubview(minhaLabel)
  }

  private func configurarConstraits() {
    NSLayoutConstraint.activate([
      minhaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      minhaLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
  }
}
