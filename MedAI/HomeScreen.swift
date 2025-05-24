import SwiftUI
 
struct HomeScreen: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 24) {
                HeaderSearchBar()
                AIAnalyzedResultsSection()
                TopDoctorsSection()
                ArticlesSection()
                TopServicesSection()
            }
            .padding(.horizontal)
            .padding(.top)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

