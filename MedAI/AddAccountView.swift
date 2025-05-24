import SwiftUI

struct AddAccountView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("This feature will let you add another user account to your device.")
            Button("Add New Account") {}
                .buttonStylePrimary()
        }
        .padding()
        .navigationTitle("Add Account")
    }
}
