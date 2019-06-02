//
//  ShapeOfTxtField.swift
//  Window Shopper
//
//  Created by AsMaa on 6/2/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import UIKit
@IBDesignable
class CustomOfTxtField: UITextField {
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    customizeView()
    }
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //change placeholder color
        if let placeHolder = placeholder{
            let place = NSAttributedString(string: placeHolder, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
