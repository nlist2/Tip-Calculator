//
//  MainViewController.swift
//  Tip Calculator
//
//  Created by Wes Griffin on 6/19/20.
//  Copyright © 2020 Noah List. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Button10: UIButton!
    @IBOutlet weak var Button15: UIButton!
    @IBOutlet weak var Button20: UIButton!
    @IBOutlet weak var MealCostField: UITextField!
    @IBOutlet weak var TipPercentField: UITextField!
    @IBOutlet weak var TipAmount: UILabel!
    @IBOutlet weak var TotalAmount: UILabel!
    @IBOutlet weak var BottomLeftLabel: UILabel!
    @IBOutlet weak var BottomRightLabel: UILabel!
    @IBOutlet weak var TopLeftLabel: UILabel!
    @IBOutlet weak var TopRightLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TopLeftLabel.layer.borderWidth = 2.5
        TopLeftLabel.layer.cornerRadius = 8
        TopLeftLabel.layer.borderColor = UIColor.red.cgColor
        TopLeftLabel.backgroundColor = UIColor.white
        
        TopRightLabel.layer.borderWidth = 2.5
        TopRightLabel.layer.cornerRadius = 8
        TopRightLabel.layer.borderColor = UIColor.red.cgColor
        TopRightLabel.backgroundColor = UIColor.white
        
        BottomLeftLabel.layer.borderWidth = 2.5
        BottomLeftLabel.layer.cornerRadius = 8
        BottomLeftLabel.layer.borderColor = UIColor.red.cgColor
        BottomLeftLabel.backgroundColor = UIColor.white
        
        TipAmount.layer.borderWidth = 2.5
        TipAmount.layer.cornerRadius = 8
        TipAmount.layer.borderColor = UIColor.red.cgColor
        TipAmount.backgroundColor = UIColor.white
        
        TotalAmount.layer.borderWidth = 2.5
        TotalAmount.layer.cornerRadius = 8
        TotalAmount.layer.borderColor = UIColor.red.cgColor
        TotalAmount.backgroundColor = UIColor.white
        
        BottomRightLabel.layer.borderWidth = 2.5
        BottomRightLabel.layer.cornerRadius = 8
        BottomRightLabel.layer.borderColor = UIColor.red.cgColor
        BottomRightLabel.backgroundColor = UIColor.white
  
    }
    
    // if you click on the 20% button, if meal_cost and tip_percentage are filled out, total amount is filled in
    @IBAction func getVal () {
        let meal_cost: String = MealCostField.text ?? ""
        let tip_percentage: String = TipPercentField.text ?? ""

        let total_amount: Double = Double(meal_cost)! * (1+(Double(tip_percentage)!/100))
        TotalAmount.text = "$" + String(total_amount)
        
        let tip_amount: Double = Double(meal_cost)! * (Double(tip_percentage)!/100)
        TipAmount.text = "$" + String(tip_amount)
        
    }
    
    @IBAction func tenPercent () {
        TipPercentField.text = "10"
    }
    
    @IBAction func fifteenPercent () {
        TipPercentField.text = "15"
    }
    
     @IBAction func twentyPercent () {
         TipPercentField.text = "20"
     }
}
