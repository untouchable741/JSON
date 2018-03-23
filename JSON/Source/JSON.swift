//
//  JSON.swift
//  JSON
//
//  Created by Tai Vuong on 3/23/18.
//  Copyright © 2018 Huu Tai Vuong. All rights reserved.
//

import Foundation

public struct JSON {
    
    var object: Any
    
    public init(data: Data?, options opt: JSONSerialization.ReadingOptions = []) throws {
        
        ///Throw invalid error if data is invalid
        guard let data = data else { throw JSONError.invalidJSON }
        
        ///Try to convert data to json object
        let object = try JSONSerialization.jsonObject(with: data, options: opt)
        
        self.init(jsonObject: object)
    }

    public init(_ object: Any) {
        ///Check whether object is data
        if let data = object as? Data {
            do {
                ///Try to init with data
                try self.init(data: data)
            } catch {
                ///Fallback case
                self.init(NSNull())
            }
        } else {
            ///Keep initializing with any other type
            self.init(jsonObject: object)
        }
    }
    
    private init(jsonObject: Any) {
        self.object = jsonObject
    }
}
