//
//  Results.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation

public struct Results<T> {
    
    public let successResponse: T?
    public let failureResponse: Error?

    init(success: T) {
        successResponse = success
        failureResponse = nil
    }

    init(failure: Error) {
        successResponse = nil
        failureResponse = failure
    }
}
