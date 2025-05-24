//
//  TopServicesSection.swift
//  MedAi
//
//  Created by Himanshu Jolly on 1/5/2025.
//
import SwiftUI
 
struct TopServicesSection: View {
    let services: [Service] = [
        Service(name: "Oncology", description: "Expert cancer treatment planning", icon: "cross.case.fill"),
        Service(name: "Breast Surgery", description: "Mastectomy, lumpectomy & consults", icon: "scissors"),
        Service(name: "Genetic Testing", description: "BRCA mutation screening & counseling", icon: "dna"),
        Service(name: "Therapy", description: "Mental health & emotional support", icon: "person.2.fill"),
        Service(name: "Radiology", description: "Scans: Mammogram, MRI, PET", icon: "waveform.path.ecg")
    ]
 
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Top Services")
                .font(.headline)
 
            VStack(spacing: 12) {
                ForEach(services) { service in
                    HStack {
                        Image(systemName: service.icon)
                            .font(.system(size: 28))
                            .frame(width: 40)
                            .foregroundColor(.blue)
 
                        VStack(alignment: .leading) {
                            Text(service.name)
                                .font(.subheadline)
                                .bold()
                            Text(service.description)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
 
                        Spacer()
 
                        Button("Book Now") {}
                            .font(.caption)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                    }
                }
            }
        }
    }
}
 
struct Service: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let icon: String
}
 
