//
//  CalcBtnView.swift
//  Window Shopper
//
//  Created by AsMaa on 6/2/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit

class CalcBtn: UIButton{
    func calcButtonView(width: Int ) -> UIButton{
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: width, height: 50))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.titleLabel?.font = UIFont(name: "Marker Felt", size: 25)
      calcBtn.addTarget(MainVC.self, action: #selector (MainVC.calculateHours), for: .touchUpInside)
        return calcBtn
    }
  

}
