//
//  KeypadViewModel.swift
//  KeyPad
//
//  Created by Alam, Mahjabin | Natasha | ECMPD on 2023/03/06.
//

import Foundation

class KeypadViewModel {
    
    var maximumNumberOfRow: Int {
        return 4
    }
    
    func numberOfButtons(for row: Int) -> Int {
        return row == 3 ? 1 : 3
    }
    
    func testBuildTrigger() {}
}
