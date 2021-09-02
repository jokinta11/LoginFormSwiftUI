//
//  GradientBackgroundStyle.swift
//  Restorants
//
//  Created by Jovan Ivanov on 31.08.21.
//

import SwiftUI

struct GradientBackgroundStyle: ButtonStyle {

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: GlobalConstants.Colors.mainGradientColors), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(25)
    }
}
