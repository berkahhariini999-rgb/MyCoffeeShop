//
//  DrinkDetailView.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import SwiftUI

struct DrinkDetailView: View {
    @EnvironmentObject var order: BasketViewModel
    
    let drink: Drink
    @Binding var isShowingDetail: Bool
    
    @ViewBuilder
    private func dismissButton() -> some View {
        Button {
            //dismiss view
            isShowingDetail = false
        } label: {
           Image(systemName: "xmark.circle.fill")
                .scaleEffect(1.5)
                .padding()
                .foregroundStyle(Color.gray)
        }
    }
    
    @ViewBuilder
    private func addToBasketButton() -> some View {
        Button {
            order.add(drink: drink)
            isShowingDetail = false
        } label: {
            Text ("\(drink.price, format: .currency(code: "EUR")) - Add to Basket")
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom, 30)
    }
    
    
    var body: some View {
        VStack {
        RemoteImageView(url: drink.imageUrl)
            .frame(width: 300,height: 225)
            .aspectRatio(contentMode: .fit)
            
            VStack {
                Text(drink.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(drink.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            Spacer()
            
          addToBasketButton()
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment : .topTrailing){
            dismissButton()
        }
    }
}

#Preview {
    DrinkDetailView(drink: DummyData.drinks[0], isShowingDetail: .constant(true))
}
