//
//  JSONSubscript.swift
//  JSON
//
//  Created by Tai Vuong on 3/23/18.
//  Copyright © 2018 Huu Tai Vuong. All rights reserved.
//

import Foundation

public extension JSON {
    
    ///Subscript for array
    public subscript(index: Int) -> JSON {
        get {
            if let array = array, index < array.count {
                return JSON(array[index])
            }
            return JSON(NSNull())
        }
    }
    
    ///Subscript for dictionary
    public subscript(key: String) -> JSON {
        get {
            if let dictionary = dictionary {
                return JSON(dictionary[key] ?? NSNull())
            }
            return JSON(NSNull())
        }
    }
}
