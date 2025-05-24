//
//  LoginView.swift
//  MedAi
//
//  Created by Piya Jolly on 18/4/2025.
//
import SwiftUI
 
struct LoginView: View {
    let onSignUp: () -> Void
    let onForgotPassword: () -> Void
    let onLoginSuccess: () -> Void
 
    @State private var email = ""
    @State private var password = ""
    @State private var showHomeTransition = false
 
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Header()
 
                Text("Welcome back to MedAI")
                    .font(.headline)
                    .foregroundColor(.gray)
 
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .textFieldStyle()
 
                SecureField("Password", text: $password)
                    .textFieldStyle()
 
                Button("Sign In") {
                    // Your login logic here
                    onLoginSuccess()
                    showHomeTransition = true
                }
                .buttonStylePrimary()
                .fullScreenCover(isPresented: $showHomeTransition) {
                    TransitionToHomeView()
                }
 
                Button("Forgot Password?") {
                    onForgotPassword()
                }
                .foregroundColor(Color(hex: "#5C7C8A"))
 
                Divider()
 
                Button("Don't have an account? Sign Up") {
                    onSignUp()
                }
                .foregroundColor(.blue)
            }
            .padding()
            .frame(maxWidth: 500)
            .padding(.top, 60)
        }
    }
}
