//
//  MyCoffeeShopApp.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 06/11/25.
//

import SwiftUI

@main
struct MyCoffeeShopApp: App {
    var body: some Scene {
        WindowGroup {
           AppTabView()
                .environmentObject(BasketViewModel())
        }
    }
}
