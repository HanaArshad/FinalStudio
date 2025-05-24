import SwiftUI

struct DataSaverView: View {
    var body: some View {
        Form {
            Toggle("Reduce video quality", isOn: .constant(true))
            Toggle("Preload data only on Wi-Fi", isOn: .constant(true))
        }
        .navigationTitle("Data Saver")
    }
}
