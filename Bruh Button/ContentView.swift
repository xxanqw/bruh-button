//
//  ContentView.swift
//  Bruh Button
//
//  Created by Іван Потієнко on 16.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                NavigationStack {
                    WelcomePage()
                }
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                NavigationStack {
                    Bruh()
                        .navigationTitle("Button itself")
                        .toolbar(.visible, for: .navigationBar)
                }
                .tabItem {
                    Label("Button", systemImage: "button.roundedtop.horizontal.fill")
                }
                NavigationStack{
                    About()
                        .navigationTitle("About")
                                                .toolbar(.visible, for: .navigationBar)
                }
                .tabItem {
                    Label("About", systemImage: "info")
                }
                
            }
        }

        
    }
}

#Preview {
    ContentView()
}
