//
//  KeyButton.swift
//  KeyPad
//
//  Created by Alam, Mahjabin | Natasha | ECMPD on 2023/03/06.
//

import UIKit

class KeyButton: UIButton {
    
    let keyValue: String
    
    init(key: String) {
        self.keyValue = key
        super.init(frame: .zero)
        customizeButton()
    }
    
    required init?(coder: NSCoder) {
       fatalError("not implemented")
    }
    
    func customizeButton() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.systemRed.cgColor
        setTitle(keyValue, for: .normal)
    }

}
