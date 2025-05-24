import SwiftUI

struct PrivacyView: View {
    var body: some View {
        Form {
            Toggle("Share health data with doctors", isOn: .constant(true))
            Toggle("Allow analytics tracking", isOn: .constant(false))
 
            Section {
                Button("Delete My Account") {}
                    .foregroundColor(.red)
            }
        }
        .navigationTitle("Privacy")
    }
}
