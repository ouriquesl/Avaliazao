//
//  AzulCoordinator.swift
//  Exercicio
//
//  Created by Leandro Ouriques on 06/07/23.
//

import Foundation
import UIKit
class AzulCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
          let viewController = AzulViewController()
            self.navigationController.pushViewController(viewController, animated: true)
          
          viewController.onVerdeTap = {
              self.gotoVerde()
          }
          }
    
    func gotoVerde() {
        let coordinator = VerdeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
}
