//
//  Wage.swift
//  Window Shopper
//
//  Created by AsMaa on 6/2/19.
//  Copyright © 2019 AsMaa. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(wage : Double,price : Double) ->Int{
        return Int(ceil(price / wage))
    }
}
