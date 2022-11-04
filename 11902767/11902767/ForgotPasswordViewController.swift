//
//  ForgotPasswordViewController.swift
//  11902767
//
//  Created by Student on 14/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    var credObj: Credentials!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    // To get stored email from 1st VC
    var email_stored : String!


    @IBOutlet weak var email_outlet: UITextField!
    
    @IBOutlet weak var new_pass: UITextField!
    
    @IBOutlet weak var again_pass: UITextField!
    
    
    @IBAction func generate(_ sender: Any) {
        
        //////////// email wrong alert declaration
        var email_alert = UIAlertController(title: "Email",
                                            message: "Enetered Email is wrong",
                                            preferredStyle: UIAlertController.Style.alert)
        // To remove the popup
        email_alert.addAction(UIAlertAction(title: "Cancel",
                                            style: UIAlertAction.Style.cancel,
                                            handler: nil))
        ////////////
        
        
        
        //////////// password not match alert declaration
        var password_alert = UIAlertController(title: "Password",
                                            message: "Passwords dont match",
                                            preferredStyle: UIAlertController.Style.alert)
        
        password_alert.addAction(UIAlertAction(title: "Cancel",
                                            style: UIAlertAction.Style.cancel,
                                            handler: nil))
        ////////////
        
        
        if(email_outlet.text != credObj.username)
        {
            self.present(email_alert, animated: true, completion: nil)
        }
        else if(new_pass.text != again_pass.text)
        {
            self.present(password_alert, animated: true, completion: nil)
        }
        else
        {
            credObj.password = new_pass.text!
    
            self.dismiss(animated: true, completion: nil)
        }
        
        
    }
    

    
}
