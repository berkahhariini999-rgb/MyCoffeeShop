//
//  Order.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import Foundation

struct Order:Codable {
    let id:String
    let customerName:String
    let customerAddress:String
    let customerMobile:String
    let items: [Drink]
    let orderTotal:Double
}
