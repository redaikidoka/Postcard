//
//  ViewController.swift
//  Postcard
//
//  Created by Pol Murcu on 1/19/15.
//  Copyright (c) 2015 Pol Murcu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // setup the label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // clear the message
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // set confirmation/ button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

