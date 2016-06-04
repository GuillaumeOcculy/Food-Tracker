//
//  ViewController.swift
//  FoodTracker
//
//  Created by Guillaume on 04/06/16.
//  Copyright © 2016 Guillaume. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    
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
    
    // UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        // The info dictionary contains multiple representations of the image, and this uses the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Set photoImageView to display the selected image.
        photoImageView.image = selectedImage
        
        // Dismiss the picker.
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    // Actions
    
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        
        nameTextField.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken
        imagePickerController.sourceType = .PhotoLibrary
        
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
        
    }
    

    
    

}

