import SwiftUI
import AVKit

struct buttonStylish: ButtonStyle {
    @Environment (\.colorScheme) var colorScheme
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 60)
            .padding(.vertical, 20)
            .foregroundStyle(colorScheme == .dark ? Color.black : Color.white)
            .background(colorScheme == .dark ? Color.white : Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

var audioPlayers = [AVAudioPlayer]()

// Array with sound names INCLUDING the .mp3 extension
let sounds = ["Bruh.mp3", "What the dog doin.mp3", "Kurwa Raketa.mp3", "За данбас нахуй.mp3", "Сусі.mp3", "Чьо за хуйня блять.mp3", "Fart.mp3", "Fire in the hole.mp3", "Как же мнє похуй.mp3", "Какіє нахуй Кірієшкі.mp3", "Казахстан.mp3", "Негри.mp3", "Омагад Поко.mp3", "Прівєт, ета Прігожін Женя.mp3", "Rizz.mp3", "Ooh (Roblox).mp3", "Ooh (Minecraft).mp3", "Boowomp.mp3", "Да ти чьо, бляяяяя.mp3", "Вот блять ти нахуй.mp3", "Women.mp3"]

struct Bruh: View {
    @State private var selectedSound = sounds[0]

    var body: some View {
        VStack {
            Spacer()
            
            Picker("Select a sound", selection: $selectedSound) {
                ForEach(sounds, id: \.self) { sound in
                    Text(sound.replacingOccurrences(of: ".mp3", with: ""))
                }
            }
            .pickerStyle(.wheel)
            .padding(.horizontal)
            Text("Choose your sound🤔")
                .font(.caption)
            Button("Play that stuff") {
                playBruh(sound: selectedSound, type: "mp3")
            }
            .buttonStyle(buttonStylish())

            Spacer()

        }
        .onDisappear {
            audioPlayers.forEach { $0.stop() }
            audioPlayers.removeAll()
        }
    }
}

func playBruh(sound: String, type: String) {
    // Look for the sound file directly with the extension
    if let path = Bundle.main.path(forResource: sound, ofType: nil) {
        let url = URL(fileURLWithPath: path)
        do {
            let audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayers.append(audioPlayer)
            audioPlayer.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    } else {
        // Add this to check if the file exists
        print("Could not find sound file: \(sound)")
    }
}

#Preview {
    Bruh()
}
