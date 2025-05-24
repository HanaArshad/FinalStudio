//
//  SplashView.swift
//  MedAi
//
//  Created by Piya Jolly on 18/4/2025.
//
import SwiftUI

struct SplashView: View {
    var onFinish: () -> Void
 
    @State private var showLogo = false
    @State private var showText = false
    @State private var hideAll = false
 
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
 
            VStack(spacing: 16) {
                Image("medai_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .scaleEffect(showLogo ? 1 : 0.6)
                    .opacity(showLogo ? 1 : 0)
                    .animation(.easeOut(duration: 1.0), value: showLogo)
 
                if showText {
                    Text("MedAI")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: "#5C7C8A"))
                        .transition(.opacity)
                        .animation(.easeInOut(duration: 1.0), value: showText)
                }
            }
            .opacity(hideAll ? 0 : 1)
        }
        .onAppear {
            showLogo = true
 
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                showText = true
            }
 
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    hideAll = true
                }
            }
 
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                onFinish()
            }
        }
    }
}
