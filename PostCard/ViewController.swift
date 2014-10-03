//
//  ViewController.swift
//  PostCard
//
//  Created by Mitch Paul on 9/11/14.
//  Copyright (c) 2014 Mitch Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextfield: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    

    @IBOutlet weak var mailSend: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonPress(sender: UIButton) {
        self.triggerTextInputField(messageLabel, output_field: enterMessageTextField, output_color: UIColor.redColor())
        
        self.triggerTextInputField(nameLabel, output_field: enterNameTextfield, output_color: UIColor.blueColor())
        mailSend.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    func triggerTextInputField(input_label:UILabel,output_field:UITextField,output_color:UIColor){
        input_label.hidden = false
        input_label.text = output_field.text
        input_label.textColor = output_color
        output_field.text = ""
        output_field.resignFirstResponder()
    }
}

