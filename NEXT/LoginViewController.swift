//
//  LoginViewController.swift
//  NEXT
//
//  Created by JJ on 10/12/2016.
//  Copyright © 2016 JJ. All rights reserved.
//

import UIKit
//import Firebase

class LoginViewController: UIViewController {
    
    var user = User()
    @IBOutlet weak var usernameTextField: UITextField!
    
    //var firebaseRef = FIRDatabase.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func onEnterBtnPressed(sender: UIButton) {
        
        if usernameTextField.text != "" {
            user.name = usernameTextField.text!
            print(user.name)
        } else {
            print("no name la")
            let alertController = UIAlertController(title: "Oops", message: "You didn't enter a name", preferredStyle: .Alert)
            let dismissAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(dismissAction)
            self.presentViewController(alertController, animated: true, completion: nil)
        }
       
    }
    
    
}

