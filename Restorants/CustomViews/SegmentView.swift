//
//  SegmentView.swift
//  Restorants
//
//  Created by Jovan Ivanov on 2.09.21.
//

import SwiftUI

struct SegmentView: View {
    
    @Binding var isLoginSegmentSelected: Bool
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            
            VStack(spacing: 12) {
                Button(action: {
                    $isLoginSegmentSelected.wrappedValue = true
                }) {
                    Text("LOGIN")
                        .fontWeight(.regular)
                        .font(.body)
                        .foregroundColor(Color.black)
                }
                
                if  isLoginSegmentSelected {
                    Rectangle()
                        .fill(Color.black)
                        .frame(height: 1)
                    
                } else {
                    Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                        .fill(Color.gray)
                        .frame(height: 1)
                }
            }.opacity(isLoginSegmentSelected ? 1 : 0.4)
            
            VStack(spacing: 12) {
                Button(action: {
                    $isLoginSegmentSelected.wrappedValue = false
                }) {
                    Text("SIGN UP")
                        .fontWeight(.regular)
                        .font(.body)
                        .foregroundColor(Color.black)
                }
                if !isLoginSegmentSelected {
                    Rectangle()
                        .fill(Color.black)
                        .frame(height: 1)
                    
                } else {
                    Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                        .fill(Color.gray)
                        .frame(height: 1)
                }
            }.opacity(isLoginSegmentSelected ? 0.4 : 1)
        }
    }
}
//
//struct SegmentView_Previews: PreviewProvider {
//    static var previews: some View {
//        SegmentView()
//    }
//}
