//
//  DTFLabel.swift
//  CoordinatorApp
//
//  Created by dairan on 14/04/21.
//

import UIKit

class DTFLabel: UILabel {
  // MARK: Lifecycle

  override init(frame: CGRect) {
    super.init(frame: .zero)
    configurar()
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Internal

  func configurar() {
    textColor = .white
    translatesAutoresizingMaskIntoConstraints = false
  }
}
