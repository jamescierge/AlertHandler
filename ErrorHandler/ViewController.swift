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
        switch sender.tag {
        case 1:
            MonsAlert.sharedInstance.showAlert(forType: .errorOne, target: self)
            break
        case 2:
            MonsAlert.sharedInstance.showAlert(forType: .errorTwo, target: self)
            break
        default:
            break
        }
    }
    
}

