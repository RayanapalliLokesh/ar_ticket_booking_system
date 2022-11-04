//
//  MenuViewController.swift
//  11902767
//
//  Created by Student on 28/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func movie(_ sender: Any) {
        performSegue(withIdentifier: "menu_to_movie", sender: nil)
    }
    
    

}
