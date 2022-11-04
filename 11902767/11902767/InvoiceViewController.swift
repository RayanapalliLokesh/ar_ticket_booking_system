//
//  InvoiceViewController.swift
//  11902767
//
//  Created by Student on 28/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class InvoiceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        aadhar.text = astr
        gender.text = gstr
        gq.text = gqstr
        gp.text = gpstr
        gt.text = String( Int(gqstr)! * Int(gpstr)! )
        pq.text = pqstr
        pp.text = ppstr
        pt.text = String( Int(pqstr)! * Int(ppstr)! )
        
        grand_total.text = String( Int(gt.text!)! + Int(pt.text!)! )
    }
    
    
    var astr : String!
    var gstr : String!
    
    var gqstr : String!
    var gpstr : String!
    
    
    var pqstr : String!
    var ppstr : String!
    
    
    @IBOutlet var aadhar: UILabel!
    @IBOutlet var gender: UILabel!
    
    @IBOutlet var gq: UILabel!
    @IBOutlet var gp: UILabel!
    @IBOutlet var gt: UILabel!
    
    @IBOutlet var pq: UILabel!
    @IBOutlet var pp: UILabel!
    @IBOutlet var pt: UILabel!
    
    @IBOutlet var grand_total: UILabel!
    

}
