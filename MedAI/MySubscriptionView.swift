import SwiftUI

struct MySubscriptionView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("You are on the Free Plan")
                .font(.headline)
 
            Button("Upgrade to Pro") {}
                .buttonStylePrimary()
        }
        .padding()
        .navigationTitle("My Subscription")
    }
}
