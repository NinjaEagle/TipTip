//
//  ViewController.swift
//  TipTip
//
//  Created by Flatiron Access Labs on 10/7/19.
//  Copyright © 2019 Codepath. All rights reserved.
//

import UIKit

class ViewController:
    UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
        
    @IBAction func calculateTip(_ sender: Any) {
//        Get bill amount
        let bill = Double(billField.text!) ?? 0
//        Calculate tip and total
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages [tipControl.selectedSegmentIndex]
        let total = bill + tip
//        Get tip
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
}

