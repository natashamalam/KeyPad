//
//  KeyPadViewController.swift
//  KeyPad
//
//  Created by Alam, Mahjabin | Natasha | ECMPD on 2023/03/06.
//

import UIKit

class KeyPadViewController: UIViewController {
    
    let configuration = Configuration()
    
    var keyPadView: KeyPadView!

    var someLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14.0)
        label.textColor = UIColor.systemGreen
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyPadView = KeyPadView(viewModel: KeypadViewModel())
        someLabel.text = configuration.labelTitle
        addSubViews()
        addlayoutConstraints()
    }
    
    private func addSubViews() {
        self.view.addSubview(keyPadView)
        self.view.addSubview(someLabel)
    }
    
    private func addlayoutConstraints() {
        let constraints = [
            keyPadView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            keyPadView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            someLabel.topAnchor.constraint(equalTo: keyPadView.bottomAnchor, constant: 20),
            someLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            someLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            someLabel.heightAnchor.constraint(equalToConstant: 40)
        ]
        NSLayoutConstraint.activate(constraints)
    }

}
