//
//  ShowNotificationsView.swift
//  NanoSettings
//
//  Settings > Notifications > Show Notifications on Wrist Down
//

import SwiftUI

struct ShowNotificationsView: View {
    @State private var showNotificationsEnabled = true
    
    var body: some View {
        List {
            Section {
                Toggle("Show Notifications", isOn: $showNotificationsEnabled)
            } footer: {
                if showNotificationsEnabled {
                    Text("You can choose which notifications are visible when your wrist is down.")
                }
            }
            
            if showNotificationsEnabled {
                Section("Apple Watch Apps") {
                    IconToggle(title: "Calculator", icon: "com.apple.NanoCalculator.watchkitapp")
                    IconToggle(title: "Contacts", icon: "com.apple.NanoContacts")
                    IconToggle(title: "Maps", icon: "com.apple.NanoMaps")
                    IconToggle(isEnabled: false, title: "Medications", icon: "com.apple.NanoMedications")
                    IconToggle(title: "Messages", icon: "com.apple.MobileSMS")
                    IconToggle(title: "Music Recognition", icon: "com.apple.nanomusicrecognition")
                    IconToggle(title: "Now Playing", icon: "com.apple.NanoNowPlaying")
                    IconToggle(title: "Shortcuts", icon: "com.apple.shortcuts.watch")
                    IconToggle(title: "Siren", icon: "com.apple.Mandrake")
                    IconToggle(title: "Translate", icon: "com.apple.NanoTranslate")
                    
                }
            }
        }
        .navigationTitle("Show Notifications")
    }
}

#Preview {
    ShowNotificationsView()
}
