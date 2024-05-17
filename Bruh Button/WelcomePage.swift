//
//  WelcomePage.swift
//  Bruh Button
//
//  Created by Іван Потієнко on 16.05.2024.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(Color.green)
                
                Image(systemName: "button.roundedtop.horizontal.fill")
                    .font(.system(size: 70))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            .padding(.top, 50)
            
            Text("Welcome to Bruh Button!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("Swipe left to continue")
                .font(.title2)
            Spacer()
            Text("made by xxanqw\nin 2024")
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding(.bottom, 50)
            
        }
        .padding()
    }
}


#Preview {
    WelcomePage()
}
