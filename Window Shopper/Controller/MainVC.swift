//
//  ViewController.swift
//  Window Shopper
//
//  Created by AsMaa on 6/1/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class MainVC: UIViewController , UITextFieldDelegate{
    let calcBtn = CalcBtn()
    var calculateBtn = UIButton()
    @IBOutlet weak var wageTxt: CustomOfTxtField!
    @IBOutlet weak var priceTxt: CustomOfTxtField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    func prepareCalcBtn(){
        calculateBtn = calcBtn.calcButtonView(width: Int(view.frame.size.width))
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        prepareCalcBtn()
        calculateBtn.isHidden = false
        wageTxt.inputAccessoryView = calculateBtn
        priceTxt.inputAccessoryView = calculateBtn
        
    }
    

    @objc  func calculateHours(){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text{
            if let wage = Double (wageTxt) , let price = Double (priceTxt){
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                calculateBtn.isHidden = true
                view.endEditing(true)
                resultLabel.text = "\(Wage.getHours(wage: wage, price: price))"
                
            }
        }
    }
    
    @IBAction func clearCalcBtnPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

