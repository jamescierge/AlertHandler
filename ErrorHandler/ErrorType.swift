//
//  ErrorType.swift
//  ErrorHandler
//
//  Created by James McPherson on 1/16/17.
//  Copyright © 2017 James McPherson. All rights reserved.
//

import Foundation

enum ErrorType: String {
    case errorOne = "errorOne"
    case errorTwo = "errorTwo"
    
    var message: String {
        switch self {
        case .errorOne:
            return parseMessage(forErrorType: .errorOne)
        case .errorTwo:
            return parseMessage(forErrorType: .errorTwo)
        }
    }
    
    var title: String {
        switch self {
        case .errorOne:
            return parseTitle(forErrorType: .errorOne)
        case .errorTwo:
            return parseTitle(forErrorType: .errorTwo)
        }
    }
    
    private func parseMessage(forErrorType type:ErrorType) -> String {
        let dict = MonsAlert.sharedInstance.resource[type.rawValue] as? [String: AnyObject] ?? [String: AnyObject]()
        let alert = Alert(dict: dict)
        return alert.message
    }
    
    private func parseTitle(forErrorType type: ErrorType) -> String {
        let dict = MonsAlert.sharedInstance.resource[type.rawValue] as? [String: AnyObject] ?? [String: AnyObject]()
        let alert = Alert(dict: dict)
        return alert.title
    }
}
