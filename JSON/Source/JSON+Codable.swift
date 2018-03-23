//
//  JSON+Codable.swift
//  JSON
//
//  Created by Tai Vuong on 3/24/18.
//  Copyright © 2018 Huu Tai Vuong. All rights reserved.
//

import Foundation

public extension JSON {
    /***
        Convert JSON to Array or single object that conformed to Decodable protocol
     */
    public func to<T: Decodable>(type: T.Type) throws -> T {
        return try JSONDecoder().decode(T.self, from: dataValue)
    }
}

public extension Array where Element: Encodable {
    
    /***
     Convert array of encodable objects to JSON
     */
    public var json: JSON? {
        do {
            let data = try JSONEncoder().encode(self)
            return JSON(data)
        } catch {
            return nil
        }
    }
    
    public var jsonValue: JSON {
        return json ?? JSON(NSNull())
    }
}

public extension Encodable {
    /***
     Convert encodable object to JSON
     */
    public var json: JSON? {
        do {
            let data = try JSONEncoder().encode(self)
            return JSON(data)
        } catch {
            return nil
        }
    }
    
    public var jsonValue: JSON {
        return json ?? JSON(NSNull())
    }
}
