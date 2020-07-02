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
    

    @IBOutlet weak var CalcButton: UIButton!
    @IBOutlet weak var ClearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Button10.layer.cornerRadius = 8
        Button15.layer.cornerRadius = 8
        Button20.layer.cornerRadius = 8
        CalcButton.layer.cornerRadius = 8
        ClearButton.layer.cornerRadius = 8
        
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
        
        TipPercentField.keyboardType = UIKeyboardType.decimalPad
        TipPercentField.autocorrectionType = .no
        TipPercentField.layer.cornerRadius = 8
        TipPercentField.layer.borderWidth = 2.5
        TipPercentField.layer.borderColor = UIColor.red.cgColor
        
        MealCostField.keyboardType = UIKeyboardType.decimalPad
        MealCostField.autocorrectionType = .no
        MealCostField.layer.cornerRadius = 8
        MealCostField.layer.borderWidth = 2.5
        MealCostField.layer.borderColor = UIColor.red.cgColor
        
  
    }
    
    // if you click on the 20% button, if meal_cost and tip_percentage are filled out, total amount is filled in
    
    @IBAction func clearFields () {
        MealCostField.text = ""
        TipPercentField.text = ""
        TotalAmount.text = ""
        TipAmount.text = ""
    }
    
    @IBAction func getVal () {
        // removes the keyboard from the screen
        MealCostField.resignFirstResponder()
        TipPercentField.resignFirstResponder()
            
        let meal_cost: String = MealCostField.text ?? ""
        let tip_percentage: String = TipPercentField.text ?? ""
        let total_amount: Double = Double(meal_cost)! * (1+(Double(tip_percentage)!/100))
        TotalAmount.text = "$" + String(total_amount.rounded(toPlaces: 2))
            
        let tip_amount: Double = Double(meal_cost)! * (Double(tip_percentage)!/100)
        TipAmount.text = "$" + String(tip_amount.rounded(toPlaces: 2))
        
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

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
