//
//  VermelhoViewController.swift
//  Exercicio
//
//  Created by Leandro Ouriques on 06/07/23.
//

import Foundation
import UIKit

class VermelhoViewController: UIViewController {
    var onAzulTap: (() -> Void)?
    var onVerdeTap: (() -> Void)?
    
    
    lazy var vermelhoView: VermelhoView = {
        let vermelhoView = VermelhoView()
        vermelhoView.onAzulTap = {
            self.onAzulTap?()
        }
        vermelhoView.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        
        return vermelhoView
    }()
    
       override func loadView(){
           self.view = vermelhoView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
            self.title = "VERMELHO"
           self.navigationController?.navigationBar.prefersLargeTitles=true
           self.navigationItem.setHidesBackButton(true, animated: false)
    
       }

}
