//
//  LiveSpeechView.swift
//  NanoSettings
//
//  Settings > Accessibility > Live Speech
//

import SwiftUI

struct LiveSpeechView: View {
    // Variables
    @State private var liveSpeechEnabled = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Live Speech", isOn: $liveSpeechEnabled)
            }, footer: {
                Text("Triple-click the Digital Crown to show Live Speech.")
            })
            
            Section {
                NavigationLink("Favorite Phrases", destination: FavoritePhrasesView())
            }
            
            Section(content: {
                NavigationLink(destination: VoicesView(), label: {
                    RowLabel(title: "English (US)", subtitle: "Samantha")
                })
            }, header: {
                Text("Voices")
            }, footer: {
                Text("Live Speech uses Keyboards to determine available voices.")
            })
        }
        .navigationTitle("Live Speech")
    }
}

#Preview {
    NavigationStack {
        LiveSpeechView()
    }
}
