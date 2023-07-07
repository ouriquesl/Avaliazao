//
//  VerdeViewController.swift
//  Exercicio
//
//  Created by Leandro Ouriques on 06/07/23.
//

import Foundation
import UIKit

class VerdeViewController: UIViewController {
    var onVermelhoTap: (() -> Void)?
    var onAzulTap: (() -> Void)?
    
    
    lazy var verdeView: VerdeView = {
        let verdeView = VerdeView()
        verdeView.onVermelhoTap = {
            self.onVermelhoTap?()
        }
        verdeView.onAzulTap = {
            self.onAzulTap?()
        }
        
        return verdeView
    }()
    
    
    
       override func loadView(){
           self.view = verdeView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
            self.title = "VERDE"
           self.navigationController?.navigationBar.prefersLargeTitles=true
           self.navigationItem.setHidesBackButton(true, animated: false)
    
       }

}
