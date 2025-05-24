//
//  SectionTitle.swift
//  MedAI
//
//  Created by Hana Arshad Ahmed on 1/5/2025.
//

import SwiftUI
 
struct SectionTitle: View {
    var title: String
 
    init(_ title: String) {
        self.title = title
    }
 
    var body: some View {
        Text(title)
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.gray)
            .padding(.top, 8)
    }
}
