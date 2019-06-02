//
//  ViewController.swift
//  Window Shopper
//
//  Created by AsMaa on 6/2/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aa: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.titleLabel?.font = UIFont(name: "Marker Felt", size: 25)
        calcBtn.addTarget(self, action: #selector (self.hours), for: .touchUpInside)
        aa.inputAccessoryView = calcBtn
       
    }
    @objc func hours(){
        print("hiiiii")
    }
}
