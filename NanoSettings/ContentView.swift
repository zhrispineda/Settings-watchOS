//
//  ContentView.swift
//  NanoSettings
//
//  Settings
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                // MARK: Main Section
                /// Notifications
                Section {
                    ForEach(mainSectionList) { item in
                        SettingsLink(title: item.title, icon: item.icon, primaryColor: item.primaryColor, secondaryColor: item.secondaryColor, content: item.content)
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
