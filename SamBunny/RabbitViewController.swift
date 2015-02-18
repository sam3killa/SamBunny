//
//  RabbitViewController.swift
//  SamBunny
//
//  Created by Samuel Shih on 2/12/15.
//  Copyright (c) 2015 Samuel Shih. All rights reserved.
//

import UIKit

class RabbitViewController: UIViewController, UIActionSheetDelegate {
    
    @IBOutlet weak var bunnyImage: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var rabbitResponseLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var scale: CGFloat! = 1
    var rotation: CGFloat! = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressLeafButton(sender: AnyObject) {
        scale = scale + 0.1
        
        if (scale > 3) {
            scale = 3
        }
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.bunnyImage.transform = CGAffineTransformMakeScale(self.scale, self.scale)
        })
    }
    
    @IBAction func didPressTearButton(sender: AnyObject) {
        scale = scale - 0.1
        
        if (scale < 0.1) {
            scale = 0.1
        }
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.bunnyImage.transform = CGAffineTransformMakeScale(self.scale, self.scale)
        })
    }
    
    @IBAction func didPressUpButton(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.bunnyImage.center.y = self.bunnyImage.center.y - 10
        })
    }
    
    @IBAction func didPressRightButton(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.bunnyImage.center.x = self.bunnyImage.center.x + 10
        })
    }
    
    @IBAction func didPressDownButton(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.bunnyImage.center.y = self.bunnyImage.center.y + 10
        })
    }
    
    @IBAction func didPressLeftButton(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.bunnyImage.center.x = self.bunnyImage.center.x - 10
        })
    }
    
    
    @IBAction func didPressReset(sender: AnyObject) {
        scale = 1
        bunnyImage.transform = CGAffineTransformMakeScale(self.scale, self.scale)
    }
    
    @IBAction func didPressRotateLeftButton(sender: AnyObject) {
        
        rotation = rotation - 10
        bunnyImage.transform = CGAffineTransformMakeDegreeRotation(rotation)
    }
    
    @IBAction func didPressRotateRightButton(sender: AnyObject) {
        
        rotation = rotation + 10
        bunnyImage.transform = CGAffineTransformMakeDegreeRotation(rotation)
    }
    
    @IBAction func didPressSubmitButton(sender: AnyObject) {
        
        activityIndicator.startAnimating()
        
        var text = self.textField.text
        self.textField.text = ""
        
        delay(1, { () -> () in
            
            self.activityIndicator.stopAnimating()
            
            if (text == "Hello") {
                self.rabbitResponseLabel.text = text
            } else if (text == "What's your name?") {
                self.rabbitResponseLabel.text = "Rabbit Bause"
            } else if text == "Will you be my friend?" {
                self.rabbitResponseLabel.text = "Hell naw Rabbit Bause befriends no one."
            } else {
                self.rabbitResponseLabel.text = "I don't understand..."
            }
        })
    }
    
    func actionSheet(actionSheet: UIActionSheet!, clickedButtonAtIndex buttonIndex: Int){
        // buttonIndex is 0 for Logout
        // buttonIndex ranges from 1-n for the other buttons.
        if(buttonIndex == 0) {
            dismissViewControllerAnimated(true, completion: { () -> Void in
            })
        } else {
          
        }
    }
    
    @IBAction func didPressLogoutButton(sender: AnyObject) {
        
        var actionSheet = UIActionSheet(title: "Log Out", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Log Out")
        actionSheet.showInView(view)
        
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
