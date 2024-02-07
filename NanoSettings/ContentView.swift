//
//  ContentView.swift
//  NanoSettings
//
//  Settings
//

import SwiftUI

struct ContentView: View {
    // Variables
    @State private var loadingEnabled = false
    let disabledLinks = ["Cellular", "Wi-Fi", "Bluetooth", "Battery"]
    
    var body: some View {
        NavigationStack {
            List {
                // MARK: Main Section
                // Notifications, General, Focus, Airplane Mode, Cellular, Wi-Fi, Bluetooth, Display & Brightness, App View, Gestures, Accessibility, Siri, Sounds & Haptics, Passcode, SOS, Battery, Privacy & Security
                Section {
                    ForEach(mainSectionList) { item in
                        SettingsLink(title: item.title, icon: item.icon, primaryColor: item.primaryColor, secondaryColor: item.secondaryColor, content: item.content)
                            .disabled(disabledLinks.contains(item.title))
                    }
                }
                
                // MARK: Apps Section
                // Clock, Contacts, Health, Heart, Workout
                Section {
                    ForEach(appSectionList) { item in
                        SettingsLink(title: item.title, icon: item.icon, primaryColor: item.primaryColor, secondaryColor: item.secondaryColor, content: item.content)
                            .disabled(disabledLinks.contains(item.title))
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    ContentView()
}
