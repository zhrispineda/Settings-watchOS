//
//  GesturesView.swift
//  NanoSettings
//
//  Settings > Gestures
//

import SwiftUI

struct GesturesView: View {
    // Variables
    @State private var coverToMuteEnabled = true
    
    var body: some View {
        List {
            Section {
                NavigationLink(destination: {}, label: {
                    VStack(alignment: .leading) {
                        Text("Double Tap")
                        Text("On")
                            .foregroundStyle(.secondary)
                    }
                })
            }
            
            Section(content: {
                Toggle("Cover to Mute", isOn: $coverToMuteEnabled)
            }, footer: {
                Text("When this is on and you receive an alert, you can mute Apple Watch by resting your palm on the display to cover it for at least 3 seconds. You'll feel a tap to confirm that mute is enabled.")
            })
        }
        .navigationTitle("Gestures")
    }
}

#Preview {
    GesturesView()
}
