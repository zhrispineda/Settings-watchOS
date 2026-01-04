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
                // Notifications, Smart Stack, Control Center, General, Focus, Airplane Mode, Wi-Fi, Bluetooth, Display & Brightness, App View, Gestures, Accessibility, Siri, Sounds & Haptics, Passcode, SOS, Battery, Privacy & Security
                Section {
                    ForEach(model.mainSectionList) { item in
                        SettingsLink(
                            item.title.localized(),
                            icon: item.icon,
                            secondaryColor: item.color,
                            content: item.destination
                        )
                    }
                }
                
                // MARK: Apps Section
                // Clock, Contacts, Health, Workout
                Section {
                    ForEach(model.appSectionList) { item in
                        SettingsLink(
                            item.title.localized(),
                            icon: item.icon,
                            secondaryColor: item.color,
                            content: item.destination
                        )
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
