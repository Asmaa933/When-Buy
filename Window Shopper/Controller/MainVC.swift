//
//  ViewController.swift
//  Window Shopper
//
//  Created by AsMaa on 6/1/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    let calcBtn = UIButton()
    
    @IBOutlet weak var wageTxt: CustomOfTxtField!
    @IBOutlet weak var priceTxt: CustomOfTxtField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
       	 prepareCalcBtn()

        
    }
    func prepareCalcBtn() {
        calcBtn.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50)
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.titleLabel?.font = UIFont(name: "Marker Felt", size: 25)
        calcBtn.addTarget(self, action: #selector(MainVC.calculateHours), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }
   
    @objc  func calculateHours(){
        if let wageTxt = wageTxt.text , let priceTxt = priceTxt.text{
            if let wage = Double (wageTxt) , let price = Double (priceTxt){
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                calcBtn.isHidden = true
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

