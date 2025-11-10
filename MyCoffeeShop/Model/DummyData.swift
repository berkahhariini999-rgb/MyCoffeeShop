//
//  DummyData.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import Foundation

struct DummyData {
    static let drinks: [Drink] = [
        Drink(id: UUID().uuidString, name: "Espresso", description: "Espresso is the purest distillation of the coffee bean, It doesn't refer to a bean or blend, but actually the preparation method.", imageLink: "https://cdn.pixabay.com/photo/2019/01/16/22/37/coffee-3936903_1280.jpg", price: 2.50, category: Category.hot),
        Drink(id: UUID().uuidString, name: "Cappucino", description: "Outside the Italy, capppucino is a coffee drink that today is typically composed of double espresso and hot milk, with the surface topped with foamed milk.", imageLink: "https://cdn.pixabay.com/photo/2016/11/19/12/54/drink-1839134_1280.jpg", price: 3.50, category: Category.cold)
        
    ]
}
