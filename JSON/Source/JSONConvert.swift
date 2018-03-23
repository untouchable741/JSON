//
//  JSONConvert.swift
//  JSON
//
//  Created by Tai Vuong on 3/23/18.
//  Copyright © 2018 Huu Tai Vuong. All rights reserved.
//

import Foundation

///MARK - Optionals converting
public extension JSON {
    
    public var bool: Bool? {
        return object as? Bool
    }
    
    public var int: Int? {
        return object as? Int
    }
    
    public var float: Float? {
        return object as? Float
    }
    
    public var double: Double? {
        return object as? Double
    }
    
    public var string: String? {
        return object as? String
    }

    public var dictionary: [String: Any]? {
        return object as? [String: Any]
    }
    
    public var array: [Any]? {
        return object as? [Any]
    }
    
    public var data: Data? {
        do {
            return try JSONSerialization.data(withJSONObject: object, options: [])
        } catch {
            return nil
        }
    }
}

///MARK - Non-optional converting
public extension JSON {
    
    public var boolValue: Bool {
        return bool ?? false
    }
    
    public var intValue: Int {
        return int ?? 0
    }
    
    public var floatValue: Float {
        return float ?? 0
    }
    
    public var doubleValue: Double {
        return double ?? 0
    }
    
    public var stringValue: String {
        return string ?? ""
    }
    
    public var dictionaryValue: [String: Any] {
        return dictionary ?? [:]
    }
    
    public var arrayValue: [Any] {
        return array ?? []
    }
    
    public var dataValue: Data {
        return data ?? Data()
    }
}
