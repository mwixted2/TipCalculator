//
//  ViewController.swift
//  TipCalculator
//
//  Created by Morgan Wixted on 12/13/15.
//  Copyright © 2015 Morgan Wixted. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipField: UITextField!
    
    @IBOutlet weak var totalField: UITextField!
    let defaults = NSUserDefaults.standardUserDefaults()
    var red = UIColor.redColor()
    var blue = UIColor.blueColor()
    var green = UIColor.greenColor()
    var yellow = UIColor.yellowColor()
    var cyan = UIColor.cyanColor()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tipField.text = "$0.00"
        totalField.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        tipField.text = String(format: "$%.2f",tip)
        totalField.text = String(format: "$%.2f",total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
        
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
