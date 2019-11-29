//
//  LDAPrintSignatureTests.swift
//  LDAUsefulToolsTests
//
//  Created by GORYAVIN Vladimir on 28/11/2019.
//  Copyright © 2019 POLYAKOV Lev. All rights reserved.
//

import XCTest
@testable import LDAUsefulTools

class LDAPrintSignatureTests: XCTestCase {
    
    var tools: LDAPrintSignature!
    
    override func setUp() {
        tools = LDAPrintSignature()
    }
    
    func testDebugLog() {
        let view = UIView()
        let className = (#file as NSString).lastPathComponent
        let stringOutput = "object: \(view) file: <\(className)> function: \(#function)\n"

        XCTAssertEqual(tools.debugLog(object: view) == stringOutput, true)
    }
}
