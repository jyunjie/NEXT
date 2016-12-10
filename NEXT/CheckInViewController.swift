//
//  CheckInViewController.swift
//  NEXT
//
//  Created by Sheena Moh on 10/12/2016.
//  Copyright © 2016 JJ. All rights reserved.
//

import UIKit
import MTBBarcodeScanner
import Alamofire

class CheckInViewController: UIViewController {
    var qrString: String?
    @IBOutlet var previewView: UIView!
    var scanner: MTBBarcodeScanner?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scanner = MTBBarcodeScanner(previewView: previewView)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.scanner?.startScanningWithResultBlock({ codes in
            let codeObjects = codes as! [AVMetadataMachineReadableCodeObject]?
            for code in codeObjects! {
                let stringValue = code.stringValue!
                self.qrString = stringValue
                print("Found code: \(stringValue)")
                
            }
            if self.qrString == "JJ string"{
                let alertController = UIAlertController(title: "Destructive", message: "Simple alertView demo with Destructive and Ok.", preferredStyle: .Alert) //Replace UIAlertControllerStyle.Alert by UIAlertControllerStyle.alert
                let DestructiveAction = UIAlertAction(title: "Destructive", style: UIAlertActionStyle.Destructive) { (result : UIAlertAction) -> Void in
                    print("Destructive")
                }
                // Replace UIAlertActionStyle.Default by UIAlertActionStyle.default
                let okAction = UIAlertAction(title: "OK", style: .Default) { (result : UIAlertAction) -> Void in
                    print("OK")
//                    self.performSegueWithIdentifier("To sign in", sender: self)
                    
//                    https://developer.tm.com.my:8443/SMSSBV1/SMSImpl
                    let parameters : [String:AnyObject] = ["username":"ceo" , "password":"9b55148c9acf5d400756ec35eede5ee7e078b0ef","msgtype":"text","message":"testing1234","to":"01126247585","hashkey":"0b37adb0e4cbf0c55c2831e8ad2d9604cc620394"]
                    let headers : [String:String] = ["APITokenId":"bCofwmznA3XCNNxlH68cpt5itMU=","PartnerId":"qyJQDhEri4dmHafDWULdGx7uxHg","PartnerTokenId":"XxmB+BkvKPJdS0//MWve2QfEtu0=","Content-Type":"application/json"]
                
                    Alamofire.request(.POST, "https://developer.tm.com.my:8443/SMSSBV1/SMSImpl/SMSImplRS/SendMessage", parameters: parameters, encoding:.JSON , headers: headers).response { response in
                        print("done")
                    }
                    
                    
                }
                alertController.addAction(DestructiveAction)
                alertController.addAction(okAction)
                self.presentViewController(alertController, animated: true, completion: nil)
            }
            }, error: nil)
    }
}
