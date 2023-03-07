//
//  KeyPadTests.swift
//  KeyPadTests
//
//  Created by Alam, Mahjabin | Natasha | ECMPD on 2023/03/07.
//

import XCTest
@testable import KeyPad

class KeyPadTests: XCTestCase {
    
    var sut: KeypadViewModel!
    
    override func setUp() {
        super.setUp()
        sut = KeypadViewModel()
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    func testAdd() {
        XCTAssertEqual(sut.numberOfButtons, 10)
    }

}
