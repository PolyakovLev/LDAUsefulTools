//
//  LDADBOToolsTest.swift
//  LDAUsefulToolsTests
//
//  Created by ZOLOTAREV Sergey on 28.11.2019.
//  Copyright © 2019 POLYAKOV Lev. All rights reserved.
//

import Foundation
import XCTest
@testable import LDAUsefulTools

class LDADBOToolsTests: XCTestCase {
    
    func testIsInnCorrect() {
        XCTAssertEqual("780204893183".isInnCorrect(), true) // valid
        XCTAssertEqual("78020489318".isInnCorrect(), false) // no valid
        XCTAssertEqual("0000000000".isInnCorrect(), false)  //test for zero
        XCTAssertEqual("".isInnCorrect(), false)
        XCTAssertEqual("asdfad".isInnCorrect(), false)
        XCTAssertEqual(" ".isInnCorrect(), false)
    }
        
    func testValidationInn (){
        XCTAssertEqual(validationInn(inn: [7,8,0,2,0,4,8,9,3,1,8,3]), true) // valid12
        XCTAssertEqual(validationInn(inn: [7,8,0,2,0,4,8,9,3,1,8, 1]), false)  // no valid12
        XCTAssertEqual(validationInn(inn: [7,7,4,4,0,0,0,3,0,2]), true) // valid10
        XCTAssertEqual(validationInn(inn: [7,7,4,4,0,0,0,3,0,1]), false) // valid10
        XCTAssertEqual(validationInn(inn: [0,0,0,0,0,0,0,0,0,0,0,0]), true) // test for zero
    }
       
    func testIsCardNumberValidByLhuna(){
    
        XCTAssertEqual("4276450020206914".isCardNumberValidByLhuna(), true) // valid
        XCTAssertEqual("427645002020691".isCardNumberValidByLhuna(), false) // no valid
        XCTAssertEqual("".isCardNumberValidByLhuna(), false) // no valid < 16
        XCTAssertEqual("000000000000000".isCardNumberValidByLhuna(), false) // test for zero
    }
       
    func testPhonePhormater() {
        XCTAssertEqual("8925 70 dc 0  0823".phonePhormater(), "+7 (925) 700-08-23")  // valid
        XCTAssertEqual("9257000823".phonePhormater(), "Номер введен неверно")        // no valid
    }
}
