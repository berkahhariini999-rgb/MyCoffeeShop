//
//  ContentView.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 06/11/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var isShowing = false
    
    var categories: [String : [Drink]] {
        .init(
            grouping: viewModel.drinks, by: {
                $0.category.rawValue
            }
        )
    }
    var body: some View {
        ZStack {
            NavigationStack {
                List(categories.keys.sorted(), id: \String.self) {
                   key in
                   
                    Section {
                        if let drinks = categories [key] {
                            ForEach(drinks) {
                                drink in
                                Text(drink.name)
                            }
                        }
                    } header: {
                       Text(key)
                            .font(.subheadline)
                    }
                }
                .navigationTitle("☕️ Home")
                .task(viewModel.fetchDrinks)
            }
        }
       
    }
}

#Preview {
   HomeView()
}
