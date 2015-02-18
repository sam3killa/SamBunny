//
//  LoginScreenViewController.swift
//  SamBunny
//
//  Created by Samuel Shih on 2/14/15.
//  Copyright (c) 2015 Samuel Shih. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    var correctEmail = "samuels.shih@gmail.com"
    var correctPassword = "correct"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressSubmitButton(sender: AnyObject) {
        
        var alert = UIAlertView(title: "Incorrect Login", message: "Username and/or Password is not correct", delegate: nil, cancelButtonTitle: "Cancel", otherButtonTitles: "OK")
        
        if (emailTextField.text == correctEmail && passwordTextField.text == correctPassword) {
            performSegueWithIdentifier("firstSegue", sender: sender) }
        
        else {
            alert.show()
        }
    }
    
    @IBAction func beganEditingEmailTextField(sender: AnyObject) {
        
//        if(emailTextField.text.isEmpty || passwordTextField.text.isEmpty) {
//            submitButton.enabled = true
//        }
//        else {
//            submitButton.enabled = false
//        }
    }
    
    @IBAction func beganEditingPasswordTextField(sender: AnyObject) {
        
//        if(emailTextField.text.isEmpty || passwordTextField.text.isEmpty) {
//            submitButton.enabled = true
//        }
//        else {
//            submitButton.enabled = false
//        }
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
