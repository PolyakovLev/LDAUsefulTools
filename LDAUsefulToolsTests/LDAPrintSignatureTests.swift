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
    
//    func testDebugLog() {
//        let stringOutput = "object: <UIApplication: 0x7f9da5d00310> file: <AppDelegate.swift> function: application(_:didFinishLaunchingWithOptions:)"
//        let application = UIApplication()
//        XCTAssert(tools.debugLog(object: application) == stringOutput, true)
//    }
}
