//
//  SettingItem.swift
//  MedAI
//
//  Created by Hana Arshad Ahmed on 1/5/2025.
//

import SwiftUI
 
struct SettingItem<Destination: View>: View {
    var icon: String
    var label: String
    var destination: Destination
    var isDestructive: Bool = false
 
    var body: some View {
        NavigationLink(destination: destination) {
            HStack(spacing: 16) {
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(isDestructive ? .red : Color(hex: "#5C7C8A"))
 
                Text(label)
                    .foregroundColor(isDestructive ? .red : .primary)
                    .font(.body)
 
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 8)
        }
    }
}
