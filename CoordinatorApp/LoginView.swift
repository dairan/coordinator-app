//
//  LoginView.swift
//  CoordinatorApp
//
//  Created by dairan on 14/04/21.
//

import UIKit

class LoginView: UIView {
  // MARK: Lifecycle

  override init(frame: CGRect) {
    super.init(frame: .zero)
    configurar()
  }

  init(coordinator: PrincipalCoordinator?) {
    super.init(frame: .zero)
    self.coordinator = coordinator
    configurar()
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Internal

  private weak var coordinator: PrincipalCoordinator!

  private let emailTextField = DTFTextField()
  private let senhaTextField = DTFTextField()
  private var bgImagemView: UIImageView!
  private let esqueciSenha = DTFCleanButton()
  private let loginButton = DTFBigButton()

  // MARK: Private

  private func configurar() {
    backgroundColor = .systemYellow
    configurarTextFields()
    configurarEsqueciSenhaButton()
    configurarLoginButton()
    configurarImagem()
    configurarConstraits()
  }

  private func configurarTextFields() {
    emailTextField.placeholder = NSLocalizedString("Your email", comment: "")
    addSubview(emailTextField)


    senhaTextField.placeholder = NSLocalizedString("Your password", comment: "")
    addSubview(senhaTextField)
  }

  private func configurarEsqueciSenhaButton() {
    esqueciSenha.setTitle(NSLocalizedString("Forgot password", comment: ""), for: .normal)
    esqueciSenha.addTarget(self, action: #selector(lembrarSenhaDidTap), for: .touchUpInside)

    addSubview(esqueciSenha)
  }

  @objc
  private func lembrarSenhaDidTap() {
    coordinator.lembrarSenha()
  }


  @objc
  private func loginButtonDidTap() {
    coordinator?.principalScreen()
  }

  private func configurarImagem() {
    let bgImage = UIImage(named: "login-bg")
    bgImagemView = UIImageView(image: bgImage)
    bgImagemView.translatesAutoresizingMaskIntoConstraints = false

    addSubview(bgImagemView)
  }

  private func configurarLoginButton() {
    loginButton.setTitle("Login", for: .normal)
    loginButton.addTarget(self, action: #selector(loginButtonDidTap), for: .touchUpInside)

    addSubview(loginButton)
  }

  private func configurarConstraits() {
    let margem: CGFloat = 20.0

    // login
    NSLayoutConstraint.activate([
      emailTextField.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 130),
      emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
      emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -50),
      emailTextField.heightAnchor.constraint(equalToConstant: 54),


      // senha
      senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: margem),
      senhaTextField.centerXAnchor.constraint(equalTo: emailTextField.centerXAnchor),
      senhaTextField.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
      senhaTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),


      // botao esqueci senha

      esqueciSenha.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: margem / 2),
      esqueciSenha.trailingAnchor.constraint(equalTo: senhaTextField.trailingAnchor),
      esqueciSenha.heightAnchor.constraint(equalToConstant: margem),


      loginButton.topAnchor.constraint(equalTo: esqueciSenha.bottomAnchor, constant: 30),
      loginButton.widthAnchor.constraint(equalTo: emailTextField.widthAnchor),
      loginButton.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
      loginButton.centerXAnchor.constraint(equalTo: emailTextField.centerXAnchor),



      // imagem de background
      bgImagemView.bottomAnchor.constraint(equalTo: bottomAnchor),
      bgImagemView.leadingAnchor.constraint(equalTo: leadingAnchor),
      bgImagemView.trailingAnchor.constraint(equalTo: trailingAnchor),
      bgImagemView.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
    ])
  }
}
