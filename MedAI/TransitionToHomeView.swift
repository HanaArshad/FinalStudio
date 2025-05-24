//
//  TransitionToHomeView.swift
//  MedAi
//
//  Created by Himanshu Jolly on 1/5/2025.
//

import SwiftUI
 
struct TransitionToHomeView: View {
    @State private var scale: CGFloat = 1.0
    @State private var opacity: Double = 1.0
    @State private var goToHome = false
 
    var body: some View {
        if goToHome {
            ContentView() // This is your home page
        } else {
            ZStack {
                Color(hex: "#2C3E50")
                    .edgesIgnoringSafeArea(.all)
                    .scaleEffect(scale)
                    .opacity(opacity)
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 1.5)) {
                    scale = 0.01
                    opacity = 0.0
                }
 
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                    goToHome = true
                }
            }
        }
    }
}

#Preview {
    TransitionToHomeView()
}
