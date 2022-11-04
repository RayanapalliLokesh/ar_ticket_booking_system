//
//  WelcomeViewController.swift
//  11902767
//
//  Created by Student on 28/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        
        username.text = username_from_login
    }
    
    var username_from_login : String!
    
    @IBOutlet var username: UILabel!
    
    
    @IBAction func go(_ sender: Any) {
        performSegue(withIdentifier: "welcome_to_menu", sender: nil)
    }
    
    
    @IBAction func logout(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
