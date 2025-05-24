//
//  AppRootView.swift
//  MedAi
//
//  Created by Piya Jolly on 30/4/2025.
//

import SwiftUI
 
struct AppRootView: View {
    @State private var splashDone = false
    @State private var showSignUp = false
    @State private var showForgotPassword = false
    @State private var showCodeVerification = false
    @State private var showSetNewPassword = false
    @State private var isAuthenticated = false
 
    var body: some View {
        NavigationStack {
            Group {
                if splashDone {
                    LoginView(
                        onSignUp: { showSignUp = true },
                        onForgotPassword: { showForgotPassword = true },
                        onLoginSuccess: { isAuthenticated = true }
                    )
                } else {
                    SplashView(onFinish: { splashDone = true })
                }
            }
            .navigationDestination(isPresented: $showSignUp) {
                SignUpView(onSignUpComplete: { isAuthenticated = true })
            }
            .navigationDestination(isPresented: $showForgotPassword) {
                ForgotPasswordView(onEmailSubmitted: { showCodeVerification = true })
            }
            .navigationDestination(isPresented: $showCodeVerification) {
                CodeVerificationView(onCodeVerified: { showSetNewPassword = true })
            }
            .navigationDestination(isPresented: $showSetNewPassword) {
                SetNewPasswordView(onPasswordSet: { isAuthenticated = true })
            }
            .navigationDestination(isPresented: $isAuthenticated) {
                HomeScreen()
            }
        }
    }
}

#Preview {
    AppRootView()
}
