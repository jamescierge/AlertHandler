//
//  AlertHelper.swift
//  ErrorHandler
//
//  Created by James McPherson on 1/18/17.
//  Copyright © 2017 James McPherson. All rights reserved.
//

import Foundation

class AlertHelper {
    
    static let sharedInstance = AlertHelper()
    private var resource = [String: AnyObject]()
    private var registeredResource: [String: AnyObject]!
    private init() {
        if let plist = Bundle.main.path(forResource: "BaseAppAlertStrings", ofType: "plist") {
            resource = NSDictionary(contentsOfFile: plist) as? [String : AnyObject] ?? [String: AnyObject]()
        }
    }
    
    func registerResource(withName name:String) {
        if let plist = Bundle.main.path(forResource: name, ofType: "plist") {
            registeredResource = NSDictionary(contentsOfFile: plist) as? [String : AnyObject] ?? [String: AnyObject]()
        }
    }
    
    func string(withKey key: String) -> String {
        var value = resource[key]
        if registeredResource != nil {
            if let newValue = registeredResource[key]{
                value = newValue
            }
        }
        return value as? String ?? ""
    }
    
}
