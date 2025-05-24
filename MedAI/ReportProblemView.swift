import SwiftUI

struct ReportProblemView: View {
    @State private var feedback = ""
 
    var body: some View {
        Form {
            Section(header: Text("Describe the issue")) {
                TextEditor(text: $feedback)
                    .frame(height: 150)
            }
 
            Section {
                Button("Submit Report") {}
                    .buttonStylePrimary()
            }
        }
        .navigationTitle("Report a Problem")
    }
}
