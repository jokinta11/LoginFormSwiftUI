//
//  OvalTextFieldStyle.swift
//  Restorants
//
//  Created by Jovan Ivanov on 31.08.21.
//

import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .foregroundColor(GlobalConstants.Colors.ovalTextFieldColor)
            .cornerRadius(25)
            .shadow(color: .gray, radius: 10)
            .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.gray, style: StrokeStyle(lineWidth: 1, dash: [10, 2]))
        )
    }
}
