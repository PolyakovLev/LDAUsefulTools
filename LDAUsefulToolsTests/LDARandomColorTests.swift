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

    func testRandom() {
        let value = CGFloat.random()
        XCTAssertEqual(value > 0 && value < 256, true)
    }
}
