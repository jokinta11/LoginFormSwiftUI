//
//  ContentView.swift
//  Restorants
//
//  Created by Jovan Ivanov on 31.08.21.
//

import SwiftUI

struct ContentView: View {
    
    private struct Constants {
        static let loginIconName = "loginIcon"
        static let titleText = "Carabitur sit amet massa nuci. Fusce at tristique magna. Fusce eget dapibus dui."
    }
    
    @State private var username: String = "+1 (917) 467-3445"
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State var isLoginSegmentSelected: Bool = true
    @State private var showingAlert = false

    var body: some View {
        NavigationView {
            
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    Image(Constants.loginIconName)
                        .padding()
                    Text(Constants.titleText)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.body)
                        .foregroundColor(Color.gray)
                    
                    VStack(alignment: .center, spacing: 20) {
                        
                        SegmentView(isLoginSegmentSelected: $isLoginSegmentSelected)
                        PhoneTextField(username: $username)
                        PasswordFieldView(placeholder: "Password")
                        PasswordFieldView(placeholder: "Confirm password")
                            .isHidden(isLoginSegmentSelected, remove: isLoginSegmentSelected)
                        let buttonText = isLoginSegmentSelected ? "SIGN IN" : "SIGN UP"
                        Button(action: {
                            showingAlert = true
                        }) {
                            Text(buttonText)
                                .fontWeight(.regular)
                                .font(.body)
                                .foregroundColor(Color.black)
                        }.buttonStyle(GradientBackgroundStyle())
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text(buttonText), dismissButton: .default(Text("Got it!")))
                        }
                        Button(action: {
                            print("Forgot Password...")
                        }) {
                            Text("Forgot Password?")
                                .fontWeight(.regular)
                                .font(.body)
                                .foregroundColor(GlobalConstants.Colors.secondaryTextColor)
                        }
                    }
                    
                    Spacer()
                    HStack(alignment: .center, spacing: 10) {
                        Text("Do not have account?")
                            .font(.body)
                            .foregroundColor(GlobalConstants.Colors.secondaryTextColor)
                        Button(action: {
                            print("Sign up...")
                        }) {
                            Text("Sign up")
                                .fontWeight(.regular)
                                .font(.body)
                                .foregroundColor(GlobalConstants.Colors.primaryTextColor)
                                .underline()
                        }
                    }
                }
                .padding(.horizontal, 30)
            }
        }
    }
}
