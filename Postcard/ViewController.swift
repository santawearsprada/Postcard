//
//  ViewController.swift
//  Postcard
//
//  Created by SANTIPONG TANCHATCHAWAL on 12/1/14.
//  Copyright (c) 2014 SANTIPONG TANCHATCHAWAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        enterMessageTextField.delegate = self
        enterNameTextField.delegate    = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        
        nameLabel.hidden    = false
        nameLabel.text      = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        enterMessageTextField.text = ""
        enterNameTextField.text    = ""
        //enterMessageTextField.resignFirstResponder()
        
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

