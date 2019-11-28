//
//  LDAUsefulToolsTests.swift
//  LDAUsefulToolsTests
//
//  Created by POLYAKOV Lev on 28/11/2019.
//  Copyright © 2019 POLYAKOV Lev. All rights reserved.
//

import XCTest
@testable import LDAUsefulTools

class LDAUsefulToolsTests: XCTestCase {
    
    var tools: LDAUsefulTools!
    
    override func setUp() {
        tools = LDAUsefulTools()
    }
    
    func testSum() {
        XCTAssertEqual(tools.sum(a: 1, b: 1), 2)
    }
    
}
