//
//  VerdeView.swift
//  Exercicio
//
//  Created by Leandro Ouriques on 06/07/23.
//

import Foundation
import UIKit

class VerdeView: UIView {
    //MARK: - Inicializadores
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.backgroundColor = .viewbackGroundGreen
            setupVisualElements()
            
        }
    
    var onVermelhoTap: (() -> Void)?
    var onAzulTap: (() -> Void)?
    
    var buttonVermelho: UIButton = {
            let button = UIButton ()
            button.setTitle("IR PARA TELA VERMELHA", for: .normal)
            button.backgroundColor = .buttonRedColor
            button.layer.cornerRadius = 14
            button.translatesAutoresizingMaskIntoConstraints = false
            
            return button
        }()
    
    var buttonAzul: UIButton = {
            let button = UIButton ()
            button.setTitle("VOLTAR PARA TELA AZUL", for: .normal)
            button.backgroundColor = .buttonBlueColor
            button.layer.cornerRadius = 14
            button.translatesAutoresizingMaskIntoConstraints = false
            
            return button
        }()
    
    func setupVisualElements() {
        self.addSubview(buttonVermelho)
        self.addSubview(buttonAzul)
        
        buttonVermelho.addTarget(self, action: #selector(vermelhoTap), for: .touchUpInside)
        buttonAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            buttonVermelho.widthAnchor.constraint(equalToConstant: 374),
            buttonVermelho.heightAnchor.constraint(equalToConstant: 60),
            buttonVermelho.topAnchor.constraint(equalTo: self.topAnchor, constant: 400),
            buttonVermelho.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonVermelho.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonAzul.topAnchor.constraint(equalTo: buttonVermelho.bottomAnchor, constant: 25),
            buttonAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        
        
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func vermelhoTap(){
        onVermelhoTap?()
    }
    
    @objc
    private func azulTap(){
        onAzulTap?()
    }
    
}
