import SwiftUI


struct HelpSupportView: View {
    var body: some View {
        List {
            NavigationLink("FAQs", destination: Text("Frequently Asked Questions"))
            NavigationLink("Contact Support", destination: Text("Email support or start chat"))
        }
        .navigationTitle("Help & Support")
    }
}
