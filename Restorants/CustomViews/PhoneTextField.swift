//
//  PhoneTextField.swift
//  Restorants
//
//  Created by Jovan Ivanov on 2.09.21.
//

import SwiftUI

struct PhoneTextField: View {
    
    @Binding var username: String
    @State var selectedCountry: Countries = .USA
    
    var body: some View {
        HStack {
            NavigationLink(destination:
                            NavigationView {
                                VStack {
                                    EnumPicker("County", selection: $selectedCountry)
                                }
                            }.navigationViewStyle(StackNavigationViewStyle())
            ) {
                FlagView(self.selectedCountry.description)
            }
            TextField(
                "Phone",
                text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .keyboardType(.numberPad)
            
        }.padding(10)
        .background(GlobalConstants.Colors.ovalTextFieldColor)
        .cornerRadius(30)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 0.5, dash: [10, 2])))
    }
}
