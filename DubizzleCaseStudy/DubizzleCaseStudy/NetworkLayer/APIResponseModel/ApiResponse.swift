//
//  ApiResponse.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation

class ApiResponse<T>: Codable where T: Codable {
    
    var message: String?
    var results: T?
    
    enum CodingKeys: String, CodingKey {
        case results
        case message
    }
    
    required public init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        message = try values.decodeIfPresent(String.self, forKey: .message)
        
        if let data = try? values.decodeIfPresent(T.self, forKey: .results) {
            self.results = data
        } else {
            self.results = nil
        }
    }
}
