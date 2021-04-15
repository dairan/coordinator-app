//
//  DTFBigButton.swift
//  CoordinatorApp
//
//  Created by dairan on 14/04/21.
//

import UIKit

class DTFBigButton: UIButton {
  override init(frame: CGRect) {
    super.init(frame: .zero)
    configurar()
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func configurar() {
    layer.cornerRadius = 8

    backgroundColor = .systemGreen
    translatesAutoresizingMaskIntoConstraints = false
  }
}
