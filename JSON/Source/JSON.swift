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
    
    public init?(data: Data?, options opt: JSONSerialization.ReadingOptions = []) throws {
        
        ///Throw invalid error if data is invalid
        guard let data = data else { throw JSONError.invalidJSON }
        
        ///Try to convert data to json object
        let object = try JSONSerialization.jsonObject(with: data, options: opt)
        self.init(object)
    }
    
    public init(_ object: Any) {
        self.object = object
    }
}
