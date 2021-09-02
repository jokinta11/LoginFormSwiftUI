//
//  FlagView.swift
//  Restorants
//
//  Created by Jovan Ivanov on 2.09.21.
//

import SwiftUI

struct FlagView: View {
    
    @State private var username: String = ""
    
    private let country: String
    
    public init(_ country: String) {
        self.country = country
    }
    
    var body: some View {
        HStack {
            Image(country)
                .resizable()
                .frame(width: 40, height: 40)
            Text("⋁")
                .foregroundColor(GlobalConstants.Colors.secondaryTextColor)
        }
    }
}

struct FlagView_Previews: PreviewProvider {
    static var previews: some View {
        FlagView("USA")
    }
}
