//
//  VermelhoView.swift
//  Exercicio
//
//  Created by Leandro Ouriques on 06/07/23.
//

import Foundation
import UIKit

class VermelhoView: UIView {
    //MARK: - Inicializadores
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.backgroundColor = .viewbackGroundRed
            setupVisualElements()
            
        }
    var onAzulTap: (() -> Void)?
    var onVerdeTap: (() -> Void)?
    
    
    var buttonAzul: UIButton = {
            let button = UIButton ()
            button.setTitle("IR PARA TELA AZUL", for: .normal)
            button.backgroundColor = .buttonBlueColor
            button.layer.cornerRadius = 14
            button.translatesAutoresizingMaskIntoConstraints = false
            
            return button
        }()
    
    var buttonVerde: UIButton = {
            let button = UIButton ()
            button.setTitle("VOLTAR PARA TELA VERDE", for: .normal)
            button.backgroundColor = .buttonGreenColor
            button.layer.cornerRadius = 14
            button.translatesAutoresizingMaskIntoConstraints = false
            
            return button
        }()
    
    func setupVisualElements() {
        self.addSubview(buttonAzul)
        self.addSubview(buttonVerde)
        
        buttonAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        buttonVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            buttonAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonAzul.topAnchor.constraint(equalTo: self.topAnchor, constant: 400),
            buttonAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonVerde.topAnchor.constraint(equalTo: buttonAzul.bottomAnchor, constant: 25),
            buttonVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        
        
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc
    private func azulTap(){
        onAzulTap?()
    }
    
    @objc
    private func verdeTap(){
        onVerdeTap?()
    }
}
