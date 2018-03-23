//
//  JSONError.swift
//  JSON
//
//  Created by Tai Vuong on 3/23/18.
//  Copyright © 2018 Huu Tai Vuong. All rights reserved.
//

import Foundation

public enum JSONError: Int, Error {
    case invalidJSON = 1001
    case unknown = 9000
}

extension JSONError: CustomNSError {
    
    public static var errorDomain = "com.taivuong.JSON"
    
    public var errorCode: Int { return self.rawValue }
    
    public var errorUserInfo: [String: Any] {
        switch self {
        case .invalidJSON:
            return [NSLocalizedDescriptionKey: "JSON is invalid."]
        case .unknown:
            return [NSLocalizedDescriptionKey: "Unknown error."]
        }
    }
}
