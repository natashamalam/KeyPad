//
//  KeyPadViewController.swift
//  KeyPad
//
//  Created by Alam, Mahjabin | Natasha | ECMPD on 2023/03/06.
//

import UIKit

class KeyPadViewController: UIViewController {
    
    var keyPadView: KeyPadView!

    override func viewDidLoad() {
        super.viewDidLoad()
        keyPadView = KeyPadView(viewModel: KeypadViewModel())
        self.view.addSubview(keyPadView)
    }

}
