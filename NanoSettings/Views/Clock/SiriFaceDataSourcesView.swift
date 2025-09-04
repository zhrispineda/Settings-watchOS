//
//  SiriFaceDataSourcesView.swift
//  NanoSettings
//
//  Settings > Clock > Siri Face Data Sources
//

import SwiftUI

struct SiriFaceDataSourcesView: View {
    // Variables
    @State private var favoriteTeamsEnabled = true
    
    var body: some View {
        List {
            Section("Data Sources") {
                IconToggle(isEnabled: true, title: "News", icon: "applenews")
                IconToggle(isEnabled: true, title: "Now Playing", icon: "applenow playing")
                IconToggle(isEnabled: true, title: "Shortcuts", icon: "com.apple.shortcuts.watch")
            }
            
            Section {
                Toggle(isOn: $favoriteTeamsEnabled) {
                    Label("Favorite Teams", systemImage: "")
                }
            } header: {
                Text("Sports")
            } footer: {
                Text("You can select your favorite teams in the TV app on your iPhone.")
            }
        }
        .navigationTitle("Siri Face Data Sources")
    }
}

#Preview {
    SiriFaceDataSourcesView()
}
