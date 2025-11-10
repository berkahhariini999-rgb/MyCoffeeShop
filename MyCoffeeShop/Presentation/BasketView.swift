//
//  BasketView.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 06/11/25.
//

import SwiftUI

struct BasketView: View {
    @EnvironmentObject var basket: BasketViewModel
    @ViewBuilder
    private func placeOrderButton () -> some View {
        Button {
            basket.createOrder(for: DummyData.user)
        } label : {
            Text("\(basket.totalPrice, format: .currency(code: "EUR")) - Place Order")
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom, 30)
    }
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(basket.items){
                            drink in
                            DrinkRow(drink, didClickRow: {
                                
                            })
                        }
                                .onDelete(perform: basket.deleteItems)
                        }
                        .listStyle(.grouped)
                        .safeAreaInset(edge: .bottom){
                            placeOrderButton()
                        }
                    }
                if basket.items.isEmpty {
                    //empty view
                    EmptyBasketView(message: "You Have No Items in your basket, Please add some..")
                }
                
                }
            .navigationTitle("🛒 Basket")
            }
        }
}

#Preview {
    BasketView()
}
