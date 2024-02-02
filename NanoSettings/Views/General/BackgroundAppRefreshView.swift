//
//  BackgroundAppRefreshView.swift
//  NanoSettings
//
//  Settings > General > Background App Refresh
//

import SwiftUI

struct BackgroundAppRefreshView: View {
    // Variables
    @State private var backgroundAppRefreshEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Background App Refresh", isOn: $backgroundAppRefreshEnabled)
            }, footer: {
                Text("Turning off Background App Refresh may preserve battery life. If you‘ve given an app permission to read background data, this setting also controls background access. Apps with complications on the current watch face will continue to refresh, even when their background app refresh setting is off.")
            })
            
            if backgroundAppRefreshEnabled {
                Section {
                    IconToggle(title: "Calculator", icon: "applecalculator")
                    IconToggle(title: "Contacts", icon: "applecontacts")
                    IconToggle(title: "Maps", icon: "applemaps")
                    IconToggle(title: "Medications", icon: "applemedications")
                    IconToggle(title: "Now Playing", icon: "applenow playing")
                    IconToggle(title: "Shortcuts", icon: "appleshortcuts")
                    IconToggle(title: "Siren", icon: "applesiren")
                }
            }
        }
        .navigationTitle("Background App Refresh")
    }
}


#Preview {
    NavigationStack {
        BackgroundAppRefreshView()
    }
}
