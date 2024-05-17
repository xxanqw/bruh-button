//
//  ButtonItSelfScreen.swift
//  Bruh Button
//
//  Created by Іван Потієнко on 16.05.2024.
//

import SwiftUI
import AVFoundation

struct buttonStylish: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 30)
            .padding(.vertical, 15)
            .background(.white)
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
    }
}

var audioPlayer: AVAudioPlayer?
func playBruh(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR")
        }
    }
}

struct Bruh: View {
    var body: some View {
        VStack {
            Spacer()
            
            Text("Press this sexy button 🥺")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Button("Bruh",systemImage: "button.roundedtop.horizontal.fill"){
                playBruh(sound: "bruh", type: "mp3")
            }
            .buttonStyle(buttonStylish())
            
            Spacer()
            
            Text("small history about this app at all\nit was made just for fun yk\nalso it was made not on drugs swear🫣")
                .font(.caption)
                .padding(.bottom, 50)
            
        }
    }
}

#Preview {
    Bruh()
}
