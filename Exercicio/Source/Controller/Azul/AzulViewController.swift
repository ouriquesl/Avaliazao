//
//  AzulViewController.swift
//  Exercicio
//
//  Created by Leandro Ouriques on 06/07/23.
//

import Foundation
import UIKit

class AzulViewController: UIViewController {
    var onVerdeTap: (() -> Void)?
    
    
    lazy var azulView: AzulView = {
        let azulView = AzulView()
        azulView.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        
        return azulView
    }()
    
       override func loadView(){
           self.view = azulView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
            self.title = "AZUL"
           self.navigationController?.navigationBar.prefersLargeTitles=true
           self.navigationItem.setHidesBackButton(true, animated: false)
    
       }

}
