//
//  ViewController.swift
//  Postcard
//
//  Created by LJ van der Plas on 05/01/16.
//  Copyright (c) 2016 Teach32. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMesageTextField: UITextField!
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
        messageLabel.hidden = false
        messageLabel.text = enterMesageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMesageTextField.text = ""
        enterMesageTextField.resignFirstResponder()
        mailButton.setTitle("mail Sent", forState: UIControlState.Normal)
    }

}

