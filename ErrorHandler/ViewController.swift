//
//  ViewController.swift
//  ErrorHandler
//
//  Created by James McPherson on 1/16/17.
//  Copyright © 2017 James McPherson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    
    var alertHelper = AlertHelper.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttonOne.tag = 1
        buttonTwo.tag = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(sender: UIButton) {
        var title = ""
        var message = ""
        switch sender.tag {
        case 1:
            title = alertHelper.string(withKey: "title_ErrorOccurred")
            message = alertHelper.string(withKey: "message_SomeMessage")
            break
        case 2:
            title = AlertHelper.sharedInstance.string(withKey: "title_Success")
            message = alertHelper.string(withKey: "message_SomeOtherMessage")
            break
        default:
            break
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}

