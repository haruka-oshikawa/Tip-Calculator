//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Haruka Oshikawa on 1/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentages: UISegmentedControl!
    
    @IBOutlet weak var tipAmountTextField: UILabel!
    
    @IBOutlet weak var totalTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculate(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let arr = [0.15, 0.18, 0.2]
        
        let tipPercentage = tipPercentages.selectedSegmentIndex
        
        let tip = bill * arr[tipPercentage]
        
        let total = bill + tip
        
        tipAmountTextField.text = String(format: "$%.2f", tip)
        
        totalTextField.text = String(format: "$%.2f", total)
        
    }
    
}

