//
//  DTFButton.swift
//  CoordinatorApp
//
//  Created by dairan on 14/04/21.
//

import UIKit

class DTFCleanButton: UIButton {
  // MARK: Lifecycle

  override init(frame: CGRect) {
    super.init(frame: .zero)
    configurar()
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Private

  private func configurar() {
    layer.cornerRadius = 12
    
    titleLabel?.font = UIFont.preferredFont(forTextStyle: .footnote)
    translatesAutoresizingMaskIntoConstraints = false
  }

}
