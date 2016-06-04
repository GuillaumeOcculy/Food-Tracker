//
//  ViewController.swift
//  FoodTracker
//
//  Created by Guillaume on 04/06/16.
//  Copyright © 2016 Guillaume. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        nameTextField.delegate = self
    }


    // UITextFieldDelegate
    func textFieldDidEndEditing(textField: UITextField) {
        
        mealNameLabel.text = nameTextField.text
        
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    // Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        print(sender)
        
        mealNameLabel.text = "Default Text"
        
    }
    

    
    

}

