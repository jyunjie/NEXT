//
//  SignUpViewController.swift
//  NEXT
//
//  Created by Sheena Moh on 10/12/2016.
//  Copyright © 2016 JJ. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileImageView.image = UIImage(named: "profileicon")!

    }

    @IBAction func onRegisterBtnClicked(sender: UIButton) {
    }


}
