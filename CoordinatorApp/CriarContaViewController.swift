//
//  CriarContaViewController.swift
//  CoordinatorApp
//
//  Created by dairan on 14/04/21.
//

import UIKit

class CriarContaViewController: UIViewController, Storyborded {
  weak var coordinator: PrincipalCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func criarContaButton(_ sender: UIButton) {
    coordinator?.criarConta()
  }

  /*
   // MARK: - Navigation

   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // Get the new view controller using segue.destination.
       // Pass the selected object to the new view controller.
   }
   */
}
