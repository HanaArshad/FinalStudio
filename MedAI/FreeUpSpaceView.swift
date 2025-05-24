import SwiftUI

struct FreeUpSpaceView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Cache size: 128MB")
            Button("Clear Cache") {}
                .buttonStylePrimary()
        }
        .padding()
        .navigationTitle("Free up space")
    }
}
