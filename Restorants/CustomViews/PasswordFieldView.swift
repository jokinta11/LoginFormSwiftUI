//
//  PasswordFieldView.swift
//  Restorants
//
//  Created by Jovan Ivanov on 2.09.21.
//

import SwiftUI

struct PasswordFieldView: View {
    
    @State private var password: String = ""
    
    private let placeholder: String
    
    public init(placeholder: String) {
        self.placeholder = placeholder
    }
    
    var body: some View {
        
        HStack {
            Image(systemName: "lock")
                .foregroundColor(.secondary)
            SecureField(placeholder,
                        text: $password)
        }.padding(20)
        .background(GlobalConstants.Colors.ovalTextFieldColor)
        .cornerRadius(30)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray, style: StrokeStyle(lineWidth: 0.5, dash: [10, 2])))
    }
}
