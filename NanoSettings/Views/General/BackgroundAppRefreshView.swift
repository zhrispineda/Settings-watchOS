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
                    IconToggle(title: "Calculator", icon: "applecalculator")
                    IconToggle(title: "Contacts", icon: "applecontacts")
                    IconToggle(title: "Maps", icon: "applemaps")
                    IconToggle(title: "Medications", icon: "applemedications")
                    IconToggle(title: "Music Recognition", icon: "NanoMusicRecognitionIcon")
                    IconToggle(title: "Now Playing", icon: "applenow playing")
                    IconToggle(title: "Settings", icon: "applesettings")
                    IconToggle(title: "Shortcuts", icon: "appleshortcuts")
                    IconToggle(title: "Siren", icon: "applesiren")
                    IconToggle(title: "Translate", icon: "appletranslate")
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
