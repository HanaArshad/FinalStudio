//
//  SettingsView.swift
//  MedAI
//
//  Created by Hana Arshad Ahmed on 1/5/2025.
//

import SwiftUI
 
struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showLogoutConfirm = false
    @State private var isLoggedOut = false
 
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 32) {
 
                    HStack {
                        Spacer()
                        Image("medai_logo")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
 
                    Group {
                        SectionTitle("Account")
                        SettingItem(icon: "person.crop.circle", label: "Edit Profile", destination: EditProfileView())
                        SettingItem(icon: "shield", label: "Security", destination: SecurityView())
                        SettingItem(icon: "bell", label: "Notifications", destination: NotificationsView())
                        SettingItem(icon: "lock.shield", label: "Privacy", destination: PrivacyView())
                    }
 
                    Group {
                        SectionTitle("Support & About")
                        SettingItem(icon: "creditcard", label: "My Subscription", destination: MySubscriptionView())
                        SettingItem(icon: "questionmark.circle", label: "Help & Support", destination: HelpSupportView())
                        SettingItem(icon: "info.circle", label: "Terms and Policies", destination: TermsAndPoliciesView())
                    }
 
                    Group {
                        SectionTitle("Cache & Cellular")
                        SettingItem(icon: "trash", label: "Free up space", destination: FreeUpSpaceView())
                        SettingItem(icon: "goforward", label: "Data Saver", destination: DataSaverView())
                    }
 
                    Group {
                        SectionTitle("Actions")
                        SettingItem(icon: "flag", label: "Report a Problem", destination: ReportProblemView())
                        SettingItem(icon: "person.badge.plus", label: "Add Account", destination: AddAccountView())
                        Button(action: {
                            showLogoutConfirm = true
                        }) {
                            HStack(spacing: 16) {
                                Image(systemName: "arrow.backward.square")
                                    .foregroundColor(.red)
                                Text("Log out")
                                    .foregroundColor(.red)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical, 8)
                        }
                    }
 
                    Spacer(minLength: 40)
                }
                .padding()
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .confirmationDialog("Are you sure you want to log out?", isPresented: $showLogoutConfirm) {
                Button("Log out", role: .destructive) {
                    isLoggedOut = true
                }
                Button("Cancel", role: .cancel) {}
            }
            .navigationDestination(isPresented: $isLoggedOut) {
                LoginView(
                    onSignUp: {},
                    onForgotPassword: {},
                    onLoginSuccess: {}
                )
            }
        }
    }
}
