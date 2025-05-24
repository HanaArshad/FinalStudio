//
//  SetNewPasswordView.swift
//  MedAi
//
//  Created by Piya Jolly on 30/4/2025.
//

import SwiftUI
 
struct SetNewPasswordView: View {
    let onPasswordSet: () -> Void
    @State private var password = ""
    @State private var confirmPassword = ""
 
    var body: some View {
        VStack(spacing: 24) {
            Header()
 
            Text("Set New Password")
                .font(.headline)
                .foregroundColor(.gray)
 
            SecureField("New Password", text: $password)
                .textFieldStyle()
            SecureField("Confirm New Password", text: $confirmPassword)
                .textFieldStyle()
 
            Button("Update Password") {
                // Backend: update password logic
                onPasswordSet()
            }
            .buttonStylePrimary()
 
            Spacer()
        }
        .padding()
        .frame(maxWidth: 500)
    }
}
