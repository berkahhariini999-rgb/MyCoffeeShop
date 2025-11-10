//
//  DrinkRow.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import SwiftUI

struct DrinkRow: View {
    private let drink: Drink
    var didClickRow: () -> Void
    
    init(_ drink: Drink, didClickRow: @escaping () -> Void) {
        self.drink = drink
        self.didClickRow = didClickRow
    }
    var body: some View {
       // Text(drink.name)
        Button {
            didClickRow()
        } label : {
            HStack {
                //image
               // Rectangle()
                RemoteImageView(url: drink.imageUrl)
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(8)
                    .clipped()
                
                VStack (alignment: .leading, spacing: 5) {
                    Text(drink.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    Text("\(drink.price, format: .currency( code: "EUR"))")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.secondary)
                }
                .padding(.leading)
                Spacer()
            }
            .frame(maxWidth: .infinity)
        
        }
        .tint(.black)
    }
}

#Preview {
    DrinkRow(DummyData.drinks[0]) {
        
    }
}
