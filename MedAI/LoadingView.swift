//
//  LoadingView.swift
//  MedAI
//
//  Created by Hana Arshad Ahmed on 15/5/2025.
//

import SwiftUI
 
struct LoadingView: View {
    var onComplete: () -> Void
 
    var body: some View {
        VStack(spacing: 24) {
            ProgressView("Analyzing Scan...")
                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                .scaleEffect(1.5)
 
            Text("This may take a few seconds")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                onComplete()
            }
        }
        .padding()
    }
}
