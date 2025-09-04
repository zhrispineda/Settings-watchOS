//
//  BackgroundAppRefreshView.swift
//  NanoSettings
//
//  Settings > General > Background App Refresh
//

import SwiftUI

struct BackgroundAppRefreshView: View {
    @State private var backgroundAppRefreshEnabled = true
    
    var body: some View {
        List {
            Section {
                Toggle("BACKGROUND_APP_UPDATING_LABEL", isOn: $backgroundAppRefreshEnabled)
            } footer: {
                Text("BACKGROUND_APP_UPDATING_FOOTER")
            }
            
            if backgroundAppRefreshEnabled {
                Section {
                    IconToggle(title: "Calculator", icon: "com.apple.NanoCalculator.watchkitapp")
                    IconToggle(title: "Contacts", icon: "com.apple.NanoContacts")
                    IconToggle(title: "Maps", icon: "com.apple.NanoMaps")
                    IconToggle(title: "Medications", icon: "com.apple.NanoMedications")
                    IconToggle(title: "Music Recognition", icon: "com.apple.nanomusicrecognition")
                    IconToggle(title: "Now Playing", icon: "com.apple.NanoNowPlaying")
                    IconToggle(title: "Settings", icon: "com.apple.NanoSettings")
                    IconToggle(title: "Shortcuts", icon: "com.apple.shortcuts.watch")
                    IconToggle(title: "Siren", icon: "com.apple.Mandrake")
                    IconToggle(title: "Translate", icon: "com.apple.NanoTranslate")
                }
            }
        }
        .navigationTitle("STATUS_BAR_TITLE_BACKGROUND_APP_REFRESH")
    }
}


#Preview {
    NavigationStack {
        BackgroundAppRefreshView()
    }
}
