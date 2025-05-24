//
//  SignUpView.swift
//  MedAi
//
//  Created by Piya Jolly on 18/4/2025.
//

import SwiftUI
 
struct SignUpView: View {
    let onSignUpComplete: () -> Void
 
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthDate = Date()
    @State private var phoneNumber = ""
    @State private var password = ""
    @State private var confirmPassword = ""
 
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Header()
 
                Text("Create your MedAI account")
                    .font(.headline)
                    .foregroundColor(.gray)
 
                TextField("First Name", text: $firstName)
                    .textFieldStyle()
                TextField("Last Name", text: $lastName)
                    .textFieldStyle()
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .textFieldStyle()
                DatePicker("Birth Date", selection: $birthDate, displayedComponents: .date)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
 
                TextField("Phone Number", text: $phoneNumber)
                    .keyboardType(.phonePad)
                    .textFieldStyle()
                SecureField("Password", text: $password)
                    .textFieldStyle()
                SecureField("Confirm Password", text: $confirmPassword)
                    .textFieldStyle()
 
                Button("Create Account") {
                    // Your sign-up logic here
                    onSignUpComplete()
                }
                .buttonStylePrimary()
 
                Button("Already have an account? Log In") {
                    // You can navigate back or call a closure
                }
                .foregroundColor(.blue)
            }
            .padding()
            .frame(maxWidth: 500)
            .padding(.top, 40)
        }
    }
}
