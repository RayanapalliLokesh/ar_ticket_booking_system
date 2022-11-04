//
//  BookingViewController.swift
//  11902767
//
//  Created by Student on 28/10/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class BookingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gender_outlet.selectedSegmentIndex = -1
        gold_outlet.isOn = false
        platinum_outlet.isOn = false
        
        gold_slider.isEnabled = false
        plat_slider.isEnabled = false
        
    }
    
    @IBOutlet var image_outlet: UIImageView!
    @IBOutlet var aadhar_outlet: UITextField!
    @IBOutlet var gender_outlet: UISegmentedControl!
    
    var image_set : [UIImage] = [#imageLiteral(resourceName: "male1-1"), #imageLiteral(resourceName: "female1-1")]
    
    @IBAction func gender_action(_ sender: Any) {
        
        if(gender_outlet.selectedSegmentIndex == 0)
        {
            image_outlet.image = image_set[0]
        }
        else if(gender_outlet.selectedSegmentIndex == 1)
        {
            image_outlet.image = image_set[1]
        }
        
    }
    
    
    @IBOutlet var gold_outlet: UISwitch!
    @IBOutlet var price: UILabel!
    @IBOutlet var gold_slider: UISlider!
    @IBOutlet var gold_quantity: UILabel!
    
    @IBOutlet var platinum_outlet: UISwitch!
    @IBOutlet var plat_price: UILabel!
    @IBOutlet var plat_slider: UISlider!
    @IBOutlet var plat_quantity: UILabel!
    
    @IBAction func gold_button_action(_ sender: Any) {
        if(gold_outlet.isOn == true)
        {
            gold_slider.isEnabled = true
        }
        else{
            gold_slider.isEnabled = false
        }
    }
    
    @IBAction func plat_button_action(_ sender: Any) {
        if(platinum_outlet.isOn == true)
        {
            plat_slider.isEnabled = true
        }
        else{
            plat_slider.isEnabled = false
        }
    }
    
    @IBAction func gold_slider_action(_ sender: Any) {
        gold_quantity.text = String(Int(gold_slider.value))
    }
    
    @IBAction func plat_slider_action(_ sender: Any) {
        plat_quantity.text = String(Int(plat_slider.value))
    }
    
    
    @IBAction func submit_action(_ sender: Any) {
        
        
        
        var error_alert = UIAlertController(title: "Oopsie",
                                            message: "Looks like you have not entered all the required details",
                                            preferredStyle: UIAlertController.Style.alert)
        error_alert.addAction(UIAlertAction(title: "Sorry",
                                            style: UIAlertAction.Style.default,
                                            handler: nil))
        
        var YesAction = { (alert:UIAlertAction) -> Void in
            self.performSegue(withIdentifier: "hometoresult", sender: nil)
        }
        
        var correct_alert = UIAlertController(title: "Submit",
                                              message: "You sure?",
                                              preferredStyle: UIAlertController.Style.actionSheet)
        
        correct_alert.addAction(UIAlertAction(title: "Yup",
                                              style: UIAlertAction.Style.default,
                                              handler: YesAction))
        correct_alert.addAction(UIAlertAction(title: "Nope",
                                              style: UIAlertAction.Style.default,
                                              handler: nil))
        
        
        if(aadhar_outlet.text == "") || (gender_outlet.selectedSegmentIndex == -1) || ((gold_outlet.isOn==false)&&(platinum_outlet.isOn==false))
        {
            self.present(error_alert, animated: true, completion: nil)
        }
        else
        {
            self.present(correct_alert, animated: true, completion: nil)
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var dest = segue.destination as! InvoiceViewController
        
        dest.astr = aadhar_outlet.text
        
        if(gender_outlet.selectedSegmentIndex==0)
        {
            dest.gstr = "Male"
        }
        else
        {
            dest.gstr = "Female"
        }
        
        if(gold_outlet.isOn == true)
        {
            dest.gqstr = gold_quantity.text
            dest.gpstr = price.text
        }
        else
        {
            dest.gqstr = "0"
            dest.gpstr = price.text
        }
        
        if(platinum_outlet.isOn == true)
        {
            dest.pqstr = plat_quantity.text
            dest.ppstr = plat_price.text
        }
        else
        {
            dest.pqstr = "0"
            dest.ppstr = plat_price.text
        }
    }
    

}
