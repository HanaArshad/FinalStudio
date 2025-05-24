import SwiftUI

struct NotificationsView: View {
    var body: some View {
        Form {
            Section(header: Text("Push Notifications")) {
                Toggle("Appointment Reminders", isOn: .constant(true))
                Toggle("Health Tips", isOn: .constant(true))
                Toggle("Promotions", isOn: .constant(false))
            }
        }
        .navigationTitle("Notifications")
    }
}
