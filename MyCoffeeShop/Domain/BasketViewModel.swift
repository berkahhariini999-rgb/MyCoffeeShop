//
//  BasketViewModel.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import Foundation
import Combine
import SwiftUI

final class BasketViewModel: ObservableObject {
    private let firebaseRepository = FirebaseRepository()
    
    
    @Published private(set) var items: [Drink] = []
    
    func add(drink: Drink){
        items.append(drink)
        print("We have \(items.count) drinks in our basket")
    }
    
    func deleteItems(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
    
    var totalPrice: Double {
        items.reduce(0) {
            $0 + $1.price
        }
    }
    
    func createOrder(for user: User?){
        guard !items.isEmpty else {
            return
        }
        
        guard let user = user else {
            return
        }
        
        let order = Order(id: UUID().uuidString, customerName: user.name, customerAddress: user.address, customerMobile: user.mobile, items: items, orderTotal: totalPrice)
        
        firebaseRepository.placeOrder(order: order)
        items = []
    }
    
}
