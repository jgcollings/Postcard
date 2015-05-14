//
//  ViewController.swift
//  Postcard
//
//  Created by Jerry Collings on 5/6/15.
//  Copyright (c) 2015 Jerry Collings. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func viewDidLayoutSubviews() {
        messageLabel.sizeToFit()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        
        messageLabel.textColor = UIColor.redColor()
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}

