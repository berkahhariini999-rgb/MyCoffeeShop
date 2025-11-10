//
//  AccountView.swift
//  MyCoffeeShop
//
//  Created by Iqbal Alhadad on 06/11/25.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var viewModel = AccountViewModel()
    
 
    
    var body: some View {
      
        NavigationStack {
            Form {
                Section("Personal Info") {
                    TextField("First Name", text:$viewModel.name)
                    TextField("Address", text:$viewModel.address)
                    TextField("Mobile", text:$viewModel.mobile)
                }
      
            Section {
                Button {
                    // save user details
                    
                } label : {
                    Text("Create User")
                }
            }
            .disabled(viewModel.isInvalidForm())
        }
        .navigationTitle("😎 My Account")
       }
    }
}

#Preview {
    AccountView()
}
