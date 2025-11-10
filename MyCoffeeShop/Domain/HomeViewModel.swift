//
//  HomeViewModel.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    private let firebaseRepository = FirebaseRepository()
    
    @Published private(set) var drinks: [Drink] = []
    @Published private(set) var selectedDrink: Drink?
    
    @Sendable func fetchDrinks() async {
        do {
            drinks = try await firebaseRepository.fetchDrinks()
        } catch {
            print("Error fetching drinks", error.localizedDescription)
        }
    }
    
    func selectedDrink(drink: Drink) {
        selectedDrink = drink
    }
}
