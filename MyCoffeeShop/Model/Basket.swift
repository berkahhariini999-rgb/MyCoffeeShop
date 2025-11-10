//
//  Basket.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//
import Foundation

struct Basket:Codable {
    let id:String
    let items: [Drink]
}
