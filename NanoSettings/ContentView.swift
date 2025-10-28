//
//  ContentView.swift
//  NanoSettings
//
//  Settings
//

import SwiftUI

struct ContentView: View {
    @Environment(SettingsModel.self) private var model
    
    var body: some View {
        NavigationStack {
            List {
                // MARK: Main Section
                // Notifications, Smart Stack, General, Focus, Airplane Mode, Wi-Fi, Bluetooth, Display & Brightness, App View, Gestures, Accessibility, Siri, Sounds & Haptics, Passcode, SOS, Battery, Privacy & Security
                Section {
                    ForEach(model.mainSectionList) { item in
                        SettingsLink(item.title.localize(), icon: item.icon, primaryColor: item.primaryColor, secondaryColor: item.secondaryColor, content: item.content)
                    }
                }
                
                // MARK: Apps Section
                // Clock, Contacts, Health, Heart, Workout
                Section {
                    ForEach(model.appSectionList) { item in
                        SettingsLink(item.title.localize(), icon: item.icon, primaryColor: item.primaryColor, secondaryColor: item.secondaryColor, content: item.content)
                    }
                }
            }
            .navigationTitle("STATUS_BAR_TITLE_SETTINGS")
        }
    }
}

#Preview {
    ContentView()
        .environment(SettingsModel())
}
