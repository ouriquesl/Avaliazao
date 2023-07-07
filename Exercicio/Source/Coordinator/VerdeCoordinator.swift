//
//  VerdeCoordinator.swift
//  Exercicio
//
//  Created by Leandro Ouriques on 06/07/23.
//

import Foundation
import UIKit
class VerdeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
          let viewController = VerdeViewController()
            self.navigationController.pushViewController(viewController, animated: true)
          
          viewController.onVermelhoTap = {
              self.gotoVermelho()
          }
          
          viewController.onAzulTap = {
              self.gotoAzul()
          }
          
          
          }
    func gotoVermelho() {
        let coordinator = VermelhoCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func gotoAzul() {
        let coordinator = AzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    }
