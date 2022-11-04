//
//  ViewController.swift
//  11902767
//
//  Created by Student on 14/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
    }
    
    var credObj = Credentials()
    //var email_store = "arjunreddy@gmail.com"
    //var password_store = "Arjun@1234"
    

    
    //@IBOutlet weak var password: UILabel!
    
    @IBOutlet weak var email_outlet: UITextField!
    
    @IBOutlet weak var password_outlet: UITextField!
    
    //@IBOutlet weak var result: UILabel!
    
    
    @IBAction func forgot_password(_ sender: Any) {
        
        performSegue(withIdentifier: "login_to_forgot_segue", sender: nil)
        
    }
    
   
    
    
    @IBAction func submit(_ sender: Any) {
        
        // creating an alert
        var alert = UIAlertController(title: "Login", message: "Wrong input", preferredStyle: UIAlertController.Style.alert)
        
        
        // adding cancel button to alert
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        
        
        // Submit button execution
        if( (email_outlet.text == credObj.username) && (password_outlet.text == credObj.password))
        {
            //result.text = "Success"
            performSegue(withIdentifier: "logintowelcome", sender: nil)
        }
        else
        {
            self.present(alert, animated: true, completion: nil)
        }
        
    }

    
    // Performing data transfer in a separate function
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier=="login_to_forgot_segue")
        {
            var dest = segue.destination as! ForgotPasswordViewController
        
        // reflecting the email stored in 1st VC to 2nd VC
        //dest.email_stored = self.email_store
            dest.credObj = credObj
        }
        else
        {
            var dest = segue.destination as! WelcomeViewController
            
            // reflecting the email stored in 1st VC to 2nd VC
            //dest.email_stored = self.email_store
            dest.username_from_login = email_outlet.text
        }
    }
    
   
    
    
}


class Credentials
{
    var username: String = "ar"
    var password: String = "1234"
}
