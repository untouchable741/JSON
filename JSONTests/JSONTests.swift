//
//  JSONTests.swift
//  JSONTests
//
//  Created by Tai Vuong on 3/23/18.
//  Copyright © 2018 Huu Tai Vuong. All rights reserved.
//

import XCTest
@testable import JSON

class JSONTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitNilData() {
        XCTAssertThrowsError(try JSON(data: nil), "Initialize with nil data should throw error") { error in
            if let error = error as? CustomNSError {
                XCTAssertEqual(error.errorCode, JSONError.invalidJSON.errorCode, "Invalid JSON error should be thrown")
            } else {
                XCTAssertFalse(true, "Wrong error type thrown")
            }
        }
    }
    
    func testInitValidData() {
        let sampleJSON = ["message": "this is message"]
        do {
            let sampleData = try JSONSerialization.data(withJSONObject: sampleJSON, options: [])
            let json = try JSON(data: sampleData)
            XCTAssertNotNil(json, "JSON must be intialized succesfully")
        } catch {
            XCTAssertFalse(true, "Error should not be thrown")
        }
    }
}
