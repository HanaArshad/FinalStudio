//
//  MyFilesView.swift
//  MedAI
//
//  Created by Hana Arshad Ahmed on 15/5/2025.
//

import SwiftUI
 
struct MyFilesView: View {
    let recentFiles: [ScanFile] = [
        ScanFile(
            id: UUID(),
            title: "Scan 01:11:2020 03:57:06",
            date: "Today",
            pageCount: 1,
            thumbnail: "scan1"
        ),
        ScanFile(
            id: UUID(),
            title: "Scan 20:02:2021 01:36:43",
            date: "Today",
            pageCount: 1,
            thumbnail: "scan2"
        )
    ]
 
    let documents: [ScanFile] = [
        ScanFile(id: UUID(), title: "Scan 01:11:2020 03:57:06", date: "Today", pageCount: 1, thumbnail: "scan3"),
        ScanFile(id: UUID(), title: "Scan 20:02:2021 01:36:43", date: "Today", pageCount: 1, thumbnail: "scan4"),
        ScanFile(id: UUID(), title: "AppStore", date: "Today", pageCount: 1, thumbnail: "scan5")
    ]
 
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
 
                    // Logo + Greeting
                    HStack {
                        Image("medai_logo")
                            .resizable()
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading) {
                            Text("Your Scans,")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            Text("Piya")
                                .font(.title2)
                                .bold()
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
 
                    // 🔍 Recent
                    Text("Recent")
                        .font(.headline)
                        .padding(.horizontal)
 
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(recentFiles) { file in
                                VStack(alignment: .leading) {
                                    Image(file.thumbnail)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 180, height: 120)
                                        .clipped()
                                        .cornerRadius(12)
 
                                    Text(file.title)
                                        .font(.subheadline)
                                        .bold()
                                        .foregroundColor(.primary)
 
                                    HStack {
                                        Text(file.date)
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        Spacer()
                                        Text("\(file.pageCount) page\(file.pageCount > 1 ? "s" : "")")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                }
                                .frame(width: 180)
                            }
                        }
                        .padding(.horizontal)
                    }
 
                    // 📁 Documents
                    Text("Documents")
                        .font(.headline)
                        .padding(.horizontal)
 
                    VStack(spacing: 16) {
                        ForEach(documents) { file in
                            HStack(spacing: 12) {
                                Image(file.thumbnail)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(8)
 
                                VStack(alignment: .leading) {
                                    Text(file.title)
                                        .font(.subheadline)
                                        .bold()
                                    Text(file.date)
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
 
                                Spacer()
 
                                Text("\(file.pageCount) page\(file.pageCount > 1 ? "s" : "")")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            .padding(.horizontal)
                        }
                    }
 
                    Spacer(minLength: 40)
                }
                .padding(.top)
            }
            .navigationTitle("My Files")
        }
    }
}
 
