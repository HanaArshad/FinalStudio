//
//  ArticlesSection.swift
//  MedAi
//
//  Created by Himanshu Jolly on 1/5/2025.
//
import SwiftUI
 
struct ArticlesSection: View {
    let articles: [Article] = [
        Article(title: "Understanding Mammogram Results", author: "Dr. Lisa Patel"),
        Article(title: "How to Prepare for a Biopsy", author: "Healthline Editors"),
        Article(title: "10 Early Signs You Shouldn't Ignore", author: "Dr. Angela Chen"),
        Article(title: "Post-Surgery Recovery Tips", author: "Mayo Clinic Team"),
        Article(title: "Dealing With Chemotherapy Side Effects", author: "Cancer.org")
    ]
 
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Health Articles and Tips")
                .font(.headline)
 
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(articles) { article in
                        VStack(alignment: .leading) {
                            Image(systemName: "doc.text.image")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                                .foregroundColor(.blue)
 
                            Text(article.title)
                                .font(.subheadline)
                                .bold()
                                .lineLimit(2)
 
                            Text("by \(article.author)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .padding()
                        .frame(width: 180)
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(radius: 2)
                    }
                }
            }
        }
    }
}
 
struct Article: Identifiable {
    let id = UUID()
    let title: String
    let author: String
}
 
