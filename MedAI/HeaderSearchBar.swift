//
//  HeaderSearchBar.swift
//  MedAi
//
//  Created by Piya Jolly on 1/5/2025.
//

import SwiftUI
 
struct HeaderSearchBar: View {
    @State private var searchText = ""
 
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image("medai_logo")
                    .resizable()
                    .frame(width: 40, height: 40)
 
                Spacer()
 
                Button(action: {
                    // Filter action
                }) {
                    Image(systemName: "slider.horizontal.3")
                        .font(.title2)
                        .foregroundColor(Color(hex: "#5C7C8A"))
                }
            }
 
            HStack {
                TextField("Search here", text: $searchText)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
 
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color(hex: "#5C7C8A"))
                        .clipShape(Circle())
                }
            }
        }
    }
}
