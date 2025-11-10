//
//  AccountViewModel.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 10/11/25.
//

import Foundation
import Combine

final class AccountViewModel: ObservableObject {
    @Published var name = ""
    @Published var address = ""
    @Published var mobile = ""
    
    func setup(user: User?){
        name = user?.name ?? ""
        address = user?.address ?? ""
        mobile = user?.mobile ?? ""
    }
    
    func isInvalidForm() -> Bool {
        name.isEmpty || address.isEmpty || mobile.isEmpty
    }
    
}
