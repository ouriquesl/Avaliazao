//
//  AzulView.swift
//  Exercicio
//
//  Created by Leandro Ouriques on 06/07/23.
//

import Foundation
import UIKit

class AzulView: UIView {
    //MARK: - Inicializadores
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.backgroundColor = .viewbackGroundBlue
            setupVisualElements()
            
        }
    
    var onVerdeTap: (() -> Void)?
    
    
    
    var buttonVerde: UIButton = {
            let button = UIButton ()
            button.setTitle("IR PARA TELA VERDE", for: .normal)
            button.backgroundColor = .buttonGreenColor
            button.layer.cornerRadius = 14
            button.translatesAutoresizingMaskIntoConstraints = false
            
            return button
        }()
    
    func setupVisualElements() {
        self.addSubview(buttonVerde)
        
        buttonVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            buttonVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonVerde.topAnchor.constraint(equalTo: self.topAnchor, constant: 450),
            buttonVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
        
        
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func verdeTap(){
        onVerdeTap?()
    }
    
}
