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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var MealCost = MealCostField.text ?? ""
        var TipPercentage = TipPercentField.text ?? ""
        var TipAmountField = TipAmount.text ?? ""
        var TotalAmountField = TotalAmount.text ?? ""
        
        
        // if meal cost is a string then return "please input number"
        
        //I tried to make it work, but there were lots of errors about converting from a string to a double and back. This is what I was using \/ but it only worked with mystring and myfloat.
        
        let myString = "556"
        let myFloat = (myString as NSString).doubleValue
        
        var ooga = myFloat * myFloat
        
        TotalAmount.text = ooga.description
        // to-do
        // configure UITextFields and save input as var
        // solve the math
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
