//
//  CommunityView.swift
//  MedAI
//
//  Created by Hana Arshad Ahmed on 15/5/2025.
//

import SwiftUI
 
struct CommunityView: View {
    let threads: [CommunityThread] = [
        CommunityThread(
            title: "Post-chemo nutrition advice?",
            author: "User123",
            timestamp: "2h ago",
            preview: "What helped you recover after your last chemo cycle? I’m really struggling with nausea and appetite loss..."
        ),
        CommunityThread(
            title: "Mental health support during treatment",
            author: "Hope4All",
            timestamp: "4h ago",
            preview: "Does anyone have recommendations for online therapy platforms that worked well with your treatment schedule?"
        ),
        CommunityThread(
            title: "Exercise routines post-surgery",
            author: "FitJourney",
            timestamp: "Yesterday",
            preview: "I’m looking to get back into light workouts after a mastectomy. What worked for you in the early days?"
        ),
        CommunityThread(
            title: "Insurance billing confusion!",
            author: "BillingBlues",
            timestamp: "1d ago",
            preview: "Anyone else had trouble getting a clear answer from insurance on coverage for specific scans or tests?"
        )
    ]
 
    var body: some View {
        NavigationStack {
            List(threads) { thread in
                VStack(alignment: .leading, spacing: 6) {
                    HStack {
                        Text(thread.title)
                            .font(.headline)
                        Spacer()
                        Text(thread.timestamp)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
 
                    Text("by \(thread.author)")
                        .font(.caption)
                        .foregroundColor(.secondary)
 
                    Text(thread.preview)
                        .font(.body)
                        .lineLimit(2)
                        .foregroundColor(.primary)
                }
                .padding(.vertical, 8)
            }
            .listStyle(.plain)
            .navigationTitle("Community Forum")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Add post action
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}
 
