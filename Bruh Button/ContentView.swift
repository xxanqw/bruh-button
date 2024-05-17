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
            WelcomePage()
            Bruh()
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ContentView()
}
