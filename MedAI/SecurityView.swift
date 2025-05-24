import SwiftUI

struct SecurityView: View {
    var body: some View {
        Form {
            Section(header: Text("Password")) {
                SecureField("Current Password", text: .constant(""))
                SecureField("New Password", text: .constant(""))
                SecureField("Confirm Password", text: .constant(""))
            }
 
            Section(header: Text("Login Options")) {
                Toggle("Use Face ID", isOn: .constant(true))
                Toggle("Enable 2-Factor Authentication", isOn: .constant(false))
            }
        }
        .navigationTitle("Security")
    }
}
