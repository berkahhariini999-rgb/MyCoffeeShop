//
//  FirebaseRepository.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import Foundation

final class FirebaseRepository {
    func fetchDrinks() async throws -> [Drink] {
        DummyData.drinks
    }
    
    func placeOrder(order: Order) {
        print("Place an order with id: \(order.id)")
        for item in order.items {
            print(item.name)
        }
    }
}
