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
            Section(content: {
                Toggle("Show Notifications", isOn: $showNotificationsEnabled)
            }, footer: {
                if showNotificationsEnabled {
                    Text("You can choose which notifications are visible when your wrist is down.")
                }
            })
            
            if showNotificationsEnabled {
                Section(content: {
                    IconToggle(title: "Calculator", icon: "applecalculator")
                    IconToggle(title: "Contacts", icon: "applecontacts")
                    IconToggle(title: "Maps", icon: "applemaps")
                    IconToggle(isEnabled: false, title: "Medications", icon: "applemedications")
                    IconToggle(title: "Now Playing", icon: "applenow playing")
                    IconToggle(title: "Shortcuts", icon: "appleshortcuts")
                    if WKInterfaceDevice().name.contains("Ultra") {
                        IconToggle(title: "Siren", icon: "applesiren")
                    }
                    
                }, header: {
                    Text("Apple Watch Apps")
                })
            }
        }
        .navigationTitle("Show Notifications")
    }
}

#Preview {
    ShowNotificationsView()
}
