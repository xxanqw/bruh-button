//
//  WelcomePage.swift
//  Bruh Button
//
//  Created by Іван Потієнко on 16.05.2024.
//

import SwiftUI



struct WelcomePage: View {
    @Environment (\.colorScheme) var colorScheme
    var body: some View {

        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(Color(hex: 0x74c464, alpha: 1))
                
                Image(systemName: "button.roundedtop.horizontal.fill")
                    .font(.system(size: 70))
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
            }
            .padding(.top, 50)
            
            Text("Welcome to Bruh Button!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.top)
                .bold()
            
            Text("An entrance to the most stupid app you've ever used")
                .font(.title3)
                .padding(.top)
                .multilineTextAlignment(.center)
            Spacer()
            Text("Soon from here u'll be able to add your own sound")
                .font(.caption)
            
        }
        .padding()
    }
}


#Preview {
    WelcomePage()
}
