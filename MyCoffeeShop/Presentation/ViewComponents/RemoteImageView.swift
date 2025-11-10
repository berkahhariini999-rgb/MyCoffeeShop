//
//  RemoteImageView.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import SwiftUI
import CachedAsyncImage

struct RemoteImageView: View {
    
    private let url: URL?
    init(url: URL?) {
        self.url = url
    }
    var body: some View {
        ZStack {
            CachedAsyncImage(url: url) { image in
                image.resizable()
            }
            placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundStyle(Color.gray)
            }
        }
    }
}

#Preview {
    RemoteImageView(url: DummyData.drinks[0].imageUrl)
}
