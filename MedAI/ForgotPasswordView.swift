//
//  ForgotPasswordView.swift
//  MedAi
//
//  Created by Piya Jolly on 30/4/2025.
//

import SwiftUI
 
struct ForgotPasswordView: View {
    let onEmailSubmitted: () -> Void
    @State private var email = ""
 
    var body: some View {
        VStack(spacing: 24) {
            Header()
 
            Text("Forgot your password?")
                .font(.headline)
                .foregroundColor(.gray)
 
            Text("Enter your email to receive a password reset code.")
                .font(.subheadline)
                .multilineTextAlignment(.center)
 
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .textFieldStyle()
 
            Button("Send Reset Code") {
                // Trigger backend to send code
                onEmailSubmitted()
            }
            .buttonStylePrimary()
 
            Spacer()
        }
        .padding()
        .frame(maxWidth: 500)
    }
}
