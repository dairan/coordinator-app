//
//  DTFTextField.swift
//  CoordinatorApp
//
//  Created by dairan on 14/04/21.
//

import UIKit

class DTFTextField: UITextField {
  // MARK: Lifecycle

  override init(frame: CGRect) {
    super.init(frame: frame)
    configurar()
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Private

  private func configurar() {
    layer.cornerRadius = 10
    layer.borderWidth = 1.0
    layer.borderColor = UIColor.yellow.cgColor
    backgroundColor = .white

    textAlignment = .center

    translatesAutoresizingMaskIntoConstraints = false
  }

}
