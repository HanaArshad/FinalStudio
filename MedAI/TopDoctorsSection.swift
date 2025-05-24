//
//  TopDoctorsSection.swift
//  MedAi
//
//  Created by Himanshu Jolly on 1/5/2025.
//

import SwiftUI
 
struct TopDoctorsSection: View {
    let doctors: [Doctor] = [
        Doctor(name: "Dr. Leah Hart", specialty: "Oncologist", description: "Specialist in chemotherapy, hormone therapy & targeted drugs."),
        Doctor(name: "Dr. Kevin Zhou", specialty: "Radiologist", description: "Expert in mammograms, MRIs, and interpreting scans."),
        Doctor(name: "Dr. Aisha Rahman", specialty: "Breast Surgeon", description: "Performs lumpectomy, mastectomy & surgical consults."),
        Doctor(name: "Dr. Maria Gomez", specialty: "Pathologist", description: "Handles lab analysis of biopsies and tissue samples."),
        Doctor(name: "Dr. Simon Lee", specialty: "Genetic Counselor", description: "Provides insight on genetic risks like BRCA1/2 mutations."),
        Doctor(name: "Dr. Chloe Trent", specialty: "Psychotherapist", description: "Focus on mental health support during treatment.")
    ]
 
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Top Doctors Near You")
                .font(.headline)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(doctors) { doctor in
                        VStack(alignment: .leading) {
                            Image(systemName: "person.crop.rectangle") // Placeholder
                                .resizable()
                                .scaledToFit()
                                .frame(height: 120)
                                .frame(maxWidth: .infinity)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(12)
 
                            Text(doctor.specialty.uppercased())
                                .font(.caption)
                                .foregroundColor(.blue)
                                .bold()
 
                            Text(doctor.name)
                                .font(.subheadline)
                                .bold()
 
                            Text(doctor.description)
                                .font(.caption)
                                .foregroundColor(.gray)
 
                            HStack {
                                Label("4.9", systemImage: "star.fill")
                                    .foregroundColor(.blue)
                                    .font(.caption)
                                Spacer()
                                Button("Book Now") {}
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 6)
                                    .padding(.horizontal, 12)
                                    .background(Color.blue)
                                    .cornerRadius(8)
                            }
                        }
                        .padding()
                        .frame(width: 240)
                        .background(Color.white)
                        .cornerRadius(16)
                        .shadow(radius: 3)
                    }
                }
            }
        }
    }
}
 
struct Doctor: Identifiable {
    let id = UUID()
    let name: String
    let specialty: String
    let description: String
}
 
