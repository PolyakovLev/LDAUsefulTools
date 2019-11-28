//
//  LDARandomColorTests.swift
//  LDAUsefulToolsTests
//
//  Created by GORYAVIN Vladimir on 28/11/2019.
//  Copyright © 2019 POLYAKOV Lev. All rights reserved.
//

import XCTest
@testable import LDAUsefulTools

class LDARandomColorTests: XCTestCase {
    
    var tools: LDARandomColor!
    
    override func setUp() {
        tools = LDARandomColor()
    }
        
    func testRandom() {
        let value = tools.random()
        XCTAssertEqual(value > 0 && value < 256, true)
    }
}
