//
//  ShowNotificationsView.swift
//  NanoSettings
//
//  Settings > Notifications > Show Notifications on Wrist Down
//

import SwiftUI

struct ShowNotificationsView: View {
    // Variables
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
                    IconToggle(title: "Calculator", icon: "applecalculator")
                    IconToggle(title: "Contacts", icon: "applecontacts")
                    IconToggle(title: "Maps", icon: "applemaps")
                    IconToggle(isEnabled: false, title: "Medications", icon: "applemedications")
                    IconToggle(title: "Now Playing", icon: "applenow playing")
                    IconToggle(title: "Shortcuts", icon: "appleshortcuts")
                    IconToggle(title: "Siren", icon: "applesiren")
                    IconToggle(title: "Translate", icon: "appletranslate")
                    
                }
            }
        }
        .navigationTitle("Show Notifications")
    }
}

#Preview {
    ShowNotificationsView()
}
