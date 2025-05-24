//
//  ScanResultsView.swift
//  MedAI
//
//  Created by Hana Arshad Ahmed on 15/5/2025.
//

import SwiftUI
 
struct ScanResultsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Image("medai_logo")
                    .resizable()
                    .frame(width: 40, height: 40)
 
                Text("Your Results, Piya")
                    .font(.title2)
                    .bold()
 
                VStack(spacing: 12) {
                    Text("🩺 Probability of Cancer: **82%**")
                        .font(.headline)
                        .foregroundColor(.red)
 
                    Text("⚠️ Please consult with a licensed specialist immediately.")
                        .foregroundColor(.orange)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
 
                VStack(alignment: .leading, spacing: 12) {
                    Text("What this means:")
                        .font(.headline)
 
                    Text("""
                    Based on the scan you uploaded, our model detected potential indicators of early-stage breast cancer with high probability. Common indicators include:
                    
                    - Mass asymmetry
                    - Microcalcifications
                    - Irregular margins
                    
                    This is **not** a definitive diagnosis. We strongly recommend following up with an oncologist for clinical interpretation and treatment planning.
                    """)
                        .font(.body)
                        .foregroundColor(.primary)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
 
                Spacer()
            }
            .padding()
        }
    }
}
 
