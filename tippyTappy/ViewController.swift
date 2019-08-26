//
//  ViewController.swift
//  tippyTappy
//
//  Created by Catherine Giraldo on 8/25/19.
//  Copyright © 2019 Catherine Giraldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billLabel.text!) ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.2, 0.25]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

