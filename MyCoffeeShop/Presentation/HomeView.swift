//
//  ContentView.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 06/11/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var isShowingDetail = false
    
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
                                //Text(drink.name)
                                DrinkRow(drink){
                                    viewModel.selectedDrink(drink: drink)
                                    isShowingDetail = true
                                }
                                
                            }
                        }
                    } header: {
                       Text(key)
                            .font(.subheadline)
                    }
                }
                .navigationTitle("☕️ Home")
                .task(viewModel.fetchDrinks)
                .blur(radius: isShowingDetail ? 20 : 0)
                .disabled(isShowingDetail)
            }
            
               // Text("This is the detail view")
               if viewModel.selectedDrink != nil && isShowingDetail  {
                   DrinkDetailView(drink: viewModel.selectedDrink!, isShowingDetail: $isShowingDetail)

                
            }
        }
        
       
       
    }
}

#Preview {
   HomeView()
}
