//
//  FocusView.swift
//  NanoSettings
//
//  Settings > Focus
//

import SwiftUI

struct FocusView: View {
    // Variables
    @State private var mirrorPhoneEnabled = true
    
    var body: some View {
        List {
            Section {
                SettingsLink(title: "Do Not Disturb", icon: "moon.fill", primaryColor: .indigo, content: { DoNotDisturbView() })
            }
            
            Section(content: {
                Toggle("Mirror my iPhone", isOn: $mirrorPhoneEnabled)
            }, footer: {
                Text("Turning on a Focus for iPhone will \(mirrorPhoneEnabled ? "also turn it on for" : "not affect your") Apple Watch.")
            })
        }
        .navigationTitle("Focus")
    }
}

#Preview {
    NavigationStack {
        FocusView()
    }
}
