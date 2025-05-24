//
//  Header.swift
//  MedAi
//
//  Created by Piya Jolly on 30/4/2025.
//

import SwiftUI
 
struct Header: View {
    var body: some View {
        HStack(spacing: 10) {
            Image("medai_logo")
                .resizable()
                .frame(width: 40, height: 40)
            Text("MedAI")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "#5C7C8A"))
        }
        .padding(.bottom, 20)
    }
}
