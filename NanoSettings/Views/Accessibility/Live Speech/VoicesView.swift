//
//  VoicesView.swift
//  NanoSettings
//
//  Settings > Accessibility > Live Speech > [Language]
//

import SwiftUI

struct VoicesView: View {
    // Variables
    @State private var selected = "Samantha"
    
    struct Language: Identifiable {
        let id = UUID()
        let language: String
        let voices: [String]
    }
    
    let englishVoices: [Language] = [
        .init(language: "English (US)", voices: ["Fred", "Junior", "Kathy", "Ralph", "Samantha", "Siri"]),
        .init(language: "English (Australia)", voices: ["Karen", "Siri"]),
        .init(language: "English (India)", voices: ["Rishi", "Siri"]),
        .init(language: "English (Ireland)", voices: ["Moira", "Siri"]),
        .init(language: "English (South Africa)", voices: ["Siri", "Tessa"]),
        .init(language: "English (UK)", voices: ["Daniel", "Siri"]),
        .init(language: "Novelty", voices: ["Albert", "Bad News", "Bahh", "Bells", "Boing", "Bubbles", "Cellos", "Good News", "Jester", "Organ", "Superstar", "Trinoids", "Whisper", "Wobble", "Zarvox"])
    ]
    
    var body: some View {
        List {
            ForEach(englishVoices) { voices in
                Section(content: {
                    ForEach(voices.voices, id: \.self) { voice in
                        NavigationLink(destination: VoicesDetailView(title: voice, language: voices.language), label: {
                            HStack {
                                Text(voice)
                                Spacer()
                                Image(systemName: "checkmark")
                                    .foregroundStyle(selected == voice ? Color.blue : Color.clear)
                            }
                        })
                    }
                }, header: {
                    Text(voices.language)
                })
            }
        }
        .navigationTitle("English")
    }
}

#Preview {
    NavigationStack {
        VoicesView()
    }
}
