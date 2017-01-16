//
//  Alert.swift
//  ErrorHandler
//
//  Created by James McPherson on 1/16/17.
//  Copyright © 2017 James McPherson. All rights reserved.
//

import Foundation

struct Alert {
    var title: String
    var message: String
    
    init(dict: [String: AnyObject]) {
        title = dict["title"] as? String ?? ""
        message = dict["message"] as? String ?? "Unknown Error"
    }
}
