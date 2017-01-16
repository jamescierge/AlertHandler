//
//  MonsError.swift
//  ErrorHandler
//
//  Created by James McPherson on 1/16/17.
//  Copyright © 2017 James McPherson. All rights reserved.
//

import Foundation
import UIKit

class MonsAlert {
    static let sharedInstance = MonsAlert()
    var resource: [String: AnyObject] {
        let resourceString = Bundle.main.bundleIdentifier! + ".alerts"
        if let plist = Bundle.main.path(forResource: resourceString, ofType: "plist") {
            return NSDictionary(contentsOfFile: plist) as? [String : AnyObject] ?? [String: AnyObject]()
        }
        return [String: AnyObject]()
    }
    
    private init() {
        
    }
    
    func showAlert(forType type: ErrorType, target: UIViewController) {
        let alert = UIAlertController(title: type.title, message: type.message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        target.present(alert, animated: true, completion: nil)
    }
}
