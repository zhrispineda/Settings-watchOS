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
                Toggle("AOT_PRIVACY_NOTIFICATIONS_ROW_TITLE", isOn: $showNotificationsEnabled)
            } footer: {
                if showNotificationsEnabled {
                    Text("AOT_NOTIFICATION_PRIVACY_FOOTER")
                }
            }
            
            if showNotificationsEnabled {
                Section("APP_AOT_NOTIFICATION_APPS_PRIVACY_HEADER") {
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
        .navigationTitle("AOT_APP_PRIVACY_NOTIFICATION_TITLE")
    }
}

#Preview {
    NavigationStack {
        ShowNotificationsView()
    }
}
