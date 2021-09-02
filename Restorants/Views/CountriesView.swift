//
//  CountriesView.swift
//  Restorants
//
//  Created by Jovan Ivanov on 1.09.21.
//

import SwiftUI

enum Countries {
    case USA
    case Bulgaria
    case Serbia
    case Spain
}

typealias Pickable = CaseIterable
                    & Identifiable
                    & Hashable
                    & CustomStringConvertible

extension Countries: Pickable {
    
    var id: Self { self }
    
    var description: String {
        switch self {
        case .USA: return "USA"
        case .Bulgaria: return "Bulgaria"
        case .Serbia: return "Serbia"
        case .Spain: return "Spain"
        }
    }
}

struct EnumPicker<Enum: Pickable, Label: View>: View {
    
    private let label: Label
    
    @Binding private var selection: Enum

    var body: some View {
        Picker(selection: $selection, label: label) {
            ForEach(Array(Enum.allCases)) { value in
                HStack {
                    Text(value.description).tag(value)
                    Image(value.description)
                        .resizable()
                          .frame(width: 20, height: 20)
                }
            }
        }
    }
    
    init(selection: Binding<Enum>, label: Label) {
        self.label = label
        _selection = selection
    }
}

extension EnumPicker where Label == Text {

    init(_ titleKey: LocalizedStringKey, selection: Binding<Enum>) {
        label = Text(titleKey)
        _selection = selection
    }

    init<S: StringProtocol>(_ title: S, selection: Binding<Enum>) {
        label = Text(title)
        _selection = selection
    }
}
