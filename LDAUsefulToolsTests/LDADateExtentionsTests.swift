//
//  LDADateExtentionsTests.swift
//  LDAUsefulToolsTests
//
//  Created by UGORETS Maria on 28/11/2019.
//  Copyright © 2019 POLYAKOV Lev. All rights reserved.
//

import XCTest
@testable import LDAUsefulTools

class LDADateExtentionTest: XCTestCase {
    
    var date1: Date!
    var date2: Date!
    var formatter: DateFormatter!
    
    override func setUp() {
        formatter = DateFormatter()
        formatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm'"
        date1 = formatter.date(from: "2016-04-14T22:44")
        date2 = formatter.date(from: "2017-04-14T22:44")
    }
    
    func testDateToString() {
        XCTAssertEqual(date1.dateToString(format: .yearMonthDayTime12), "2016.04.14 at 10:44 PM")
        XCTAssertEqual(date1.dateToString(format: .yearMonthDayTime24), "2016.04.14 at 22:44")
        XCTAssertEqual(date1.dateToString(format: .yearMinthDay), "2016.04.14")
    }
    
    func testIsInPeriod() {
        if let dateIsInPeriod = formatter.date(from: "2016-09-14T22.44") {
            XCTAssertEqual(dateIsInPeriod.isInPeriod((date1, date2)), true)
        }
        
        if let dateIsNotInPeriod = formatter.date(from: "2014-09-14T22.44") {
             XCTAssertEqual(dateIsNotInPeriod.isInPeriod((date1, date2)), false)
        }
        XCTAssertEqual(date1.isInPeriod((date1, date2)), true)
        XCTAssertEqual(date2.isInPeriod((date1, date2)), true)
    }
}

