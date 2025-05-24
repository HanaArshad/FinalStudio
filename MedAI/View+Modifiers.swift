//
//  View+Modifiers.swift
//  MedAi
//
//  Created by Piya Jolly on 30/4/2025.
//

import SwiftUI
 
extension View {
    func textFieldStyle() -> some View {
        self
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(8)
    }
 
    func buttonStylePrimary() -> some View {
        self
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(hex: "#5C7C8A"))
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}
