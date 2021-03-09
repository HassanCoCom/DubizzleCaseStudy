//
//  EmptyViewState.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//


import Foundation

enum EmptyViewState {
    
    case noInternet
    case somethingWrong
    case error
    
    var image: String {
        switch self {
        case .noInternet:
            return "no-internet"
        case .somethingWrong, .error:
            return "excalamation-icon"
        }
    }
    
    var title: String {
        switch self {
        case .noInternet:
            return "No Internet"
        case .somethingWrong:
            return "Oops!"
        case .error:
            return "Error"
        }
    }
    
    var subTitle: String {
        switch self {
        case .noInternet:
            return "Please check your device have an active internet connection."
        case .somethingWrong:
            return "Something went wrong."
        case .error:
            return ""
        }
    }
}
