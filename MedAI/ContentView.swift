//
//  ContentView.swift
//  MedAi
//
//  Created by Piya Jolly on 18/4/2025.
//

import SwiftUI
 
struct ContentView: View {
    @State private var selectedTab = 0
 
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                HomeScreen()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
 
                MyFilesView()
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("My File")
                    }
                    .tag(1)
 
                ScanView()
                    .tabItem {
                        Image(systemName: "plus.circle.fill") // hidden
                        Text("Scan")
                    }
                    .tag(2)
 
                CommunityView()
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        Text("User")
                    }
                    .tag(3)
 
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                    .tag(4)
            }
 
            // Custom center "Scan" button overlay
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        selectedTab = 2
                    }) {
                        ZStack {
                            Circle()
                                .fill(Color(hex: "#5C7C8A"))
                                .frame(width: 64, height: 64)
                                .shadow(radius: 6)
 
                            Image(systemName: "qrcode.viewfinder")
                                .font(.system(size: 28))
                                .foregroundColor(.white)
                        }
                    }
                    .offset(y: -20)
                    Spacer()
                }
            }
        }
    }
}
