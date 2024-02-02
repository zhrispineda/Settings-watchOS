//
//  ShowAppsView.swift
//  NanoSettings
//
//  Settings > Display & Brightness > Always On > Show Apps
//

import SwiftUI

struct ShowAppsView: View {
    // Variables
    @State private var showAppsEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Show Apps", isOn: $showAppsEnabled)
            }, footer: {
                Text("You can choose which apps are visible when your wrist is down.")
            })
            
            if showAppsEnabled {
                Section(content: {
                    IconToggle(title: "Calculator", icon: "applecalculator")
                    IconToggle(title: "Contacts", icon: "applecontacts")
                    IconToggle(title: "Maps", icon: "applemaps")
                    IconToggle(isEnabled: false, title: "Medications", icon: "applemedications")
                    IconToggle(title: "Now Playing", icon: "applenow playing")
                    IconToggle(title: "Shortcuts", icon: "appleshortcuts")
                    IconToggle(title: "Siren", icon: "applesiren")
                    
                }, header: {
                    Text("Apple Watch Apps")
                })
            }
        }
        .navigationTitle("Show Apps")
    }
}

#Preview {
    NavigationStack {
        ShowAppsView()
    }
}
