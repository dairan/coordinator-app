//
//  LembrarSenhaViewController.swift
//  CoordinatorApp
//
//  Created by dairan on 14/04/21.
//

import UIKit

class LembrarSenhaViewController: UIViewController {
  // MARK: Internal

  let minhaLabel = DTFLabel()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemTeal
    configurarLabel()
    configurarConstraits()
  }

  // MARK: Private

  private func configurarLabel() {
    minhaLabel.text = "Tela lembrar senha"

    view.addSubview(minhaLabel)
  }

  private func configurarConstraits() {
    NSLayoutConstraint.activate([
      minhaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      minhaLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
  }
}
