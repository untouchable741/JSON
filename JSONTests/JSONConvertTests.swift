//
//  JSONConvertTests.swift
//  JSONTests
//
//  Created by Tai Vuong on 3/23/18.
//  Copyright © 2018 Huu Tai Vuong. All rights reserved.
//

import XCTest
@testable import JSON

class JSONConvertTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testConvertingToDictionarySucceed() {
        let sampleObjectJSON = ["message": "this is message"]
        do {
            let sampleData = try JSONSerialization.data(withJSONObject: sampleObjectJSON, options: [])
            let json = try JSON(data: sampleData)
            XCTAssertNotNil(json.dictionary, "JSON should be able to converted to dictionary")
        } catch {
            XCTAssertFalse(true, "Error should not be thrown")
        }
    }
    
    func testConvertingToDictionaryFailed() {
        let sampleObjectJSON = [["first", "second", "third"]]
        do {
            let sampleData = try JSONSerialization.data(withJSONObject: sampleObjectJSON, options: [])
            let json = try JSON(data: sampleData)
            XCTAssertNil(json.dictionary, "JSON should be nil because it will not be able to converted into dictionary")
        } catch {
            XCTAssertFalse(true, "Error should not be thrown")
        }
    }
    
    func testConvertingToArraySucceed() {
        let sampleObjectJSON = [["first", "second", "third"]]
        do {
            let sampleData = try JSONSerialization.data(withJSONObject: sampleObjectJSON, options: [])
            let json = try JSON(data: sampleData)
            XCTAssertNotNil(json.array, "JSON should be able to converted to array")
        } catch {
            XCTAssertFalse(true, "Error should not be thrown")
        }
    }
    
    func testConvertingToArrayFailed() {
        let sampleObjectJSON = ["message": "content"]
        do {
            let sampleData = try JSONSerialization.data(withJSONObject: sampleObjectJSON, options: [])
            let json = try JSON(data: sampleData)
            XCTAssertNil(json.array, "JSON should be nil because it will not be able to converted into array")
        } catch {
            XCTAssertFalse(true, "Error should not be thrown")
        }
    }
    
    func testConvertingToInt() {
        let json = JSON(Int(1))
        XCTAssertNotNil(json.int)
        XCTAssertEqual(json.intValue, 1)
    }
    
    func testConvertingToDouble() {
        let json = JSON(Double(0.99))
        XCTAssertNotNil(json.double)
        XCTAssertEqual(json.doubleValue, Double(0.99))
    }
    
    func testConvertingToFloat() {
        let json = JSON(Float(0.99))
        XCTAssertNotNil(json.float)
        XCTAssertEqual(json.floatValue, Float(0.99))
    }
    
    func testConvertingToString() {
        let json = JSON("HELLO WORLD")
        XCTAssertNotNil(json.string)
        XCTAssertEqual(json.stringValue, "HELLO WORLD")
    }
}
