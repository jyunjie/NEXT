//
//  ProfileViewController.swift
//  NEXT
//
//  Created by Sheena Moh on 10/12/2016.
//  Copyright © 2016 JJ. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var mobileLabel: UILabel!
    @IBOutlet weak var descTextView: UITextView!
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.clipsToBounds = true
        profilePic.image = UIImage(named: "JJProfile")!

        usernameLabel.text = "JJ"
        emailLabel.text = "jj@gmail.com"
        mobileLabel.text = "+6011 888 0000"
        descTextView.text = "test"
        print("test")
        
        // Do any additional setup after loading the view.
    }
    
    
}
