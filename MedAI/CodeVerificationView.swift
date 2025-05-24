//
//  CodeVerificationView.swift
//  MedAi
//
//  Created by Piya Jolly on 30/4/2025.
//

import SwiftUI
 
struct CodeVerificationView: View {
    let onCodeVerified: () -> Void
    @State private var code = ""
 
    var body: some View {
        VStack(spacing: 24) {
            Header()
 
            Text("Verify Your Code")
                .font(.headline)
                .foregroundColor(.gray)
 
            Text("We’ve sent a 6-digit code to your email.")
                .font(.subheadline)
                .multilineTextAlignment(.center)
 
            TextField("Enter 6-digit code", text: $code)
                .keyboardType(.numberPad)
                .textFieldStyle()
 
            Button("Verify Code") {
                // Backend: validate MFA code
                onCodeVerified()
            }
            .buttonStylePrimary()
 
            Spacer()
        }
        .padding()
        .frame(maxWidth: 500)
    }
}
 
