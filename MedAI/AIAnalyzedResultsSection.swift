//
//  AIAnalyzedResultsSection.swift
//  MedAi
//
//  Created by Piya Jolly on 1/5/2025.
//

import SwiftUI

struct AIAnalyzedResultsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("AI ANALYZED RESULTS")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
 
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(.systemGray6))
                    .frame(height: 120)
 
                VStack(spacing: 6) {
                    Image(systemName: "leaf.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.green)
 
                    Text("TOP HEALTH DOCTORS")
                        .font(.headline)
                        .bold()
 
                    Text("Integrity | Service | Excellence")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
        }
    }
}

#Preview {
    AIAnalyzedResultsSection()
}
