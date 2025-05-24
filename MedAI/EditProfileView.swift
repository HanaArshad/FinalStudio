import SwiftUI

struct EditProfileView: View {
    var body: some View {
        Form {
            Section(header: Text("Basic Info")) {
                TextField("First Name", text: .constant("Sarah"))
                TextField("Last Name", text: .constant("Kim"))
                TextField("Email", text: .constant("sarah@example.com"))
            }
 
            Section {
                Button("Save Changes") {}
                    .buttonStylePrimary()
            }
        }
        .navigationTitle("Edit Profile")
    }
}
