//
//  EmptyBasketView.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import SwiftUI

struct EmptyBasketView: View {
    private let message: String
    init(message: String) {
        self.message = message
    }
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "list.bullet.clipboard")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .red, .green)
                    .font(.system(size: 120))
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.secondary)
                    .padding()
                
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyBasketView(message: "Empty Basket")
}
