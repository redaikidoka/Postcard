//
//  ViewController.swift
//  Postcard
//
//  Created by Pol Murcu on 1/19/15.
//  Copyright (c) 2015 Pol Murcu. All rights reserved.
//

import UIKit

// the postcard
class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // MESSAGE
        // setup the label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // clear the message
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // NAME
        // setup the label
        nameLabel.text = "To: " + enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        
        // clear the name
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        // set confirmation/button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

