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
    let disabledLinks = ["Cellular", "Wi-Fi", "Bluetooth"]
    
    var body: some View {
        NavigationStack {
            List {
                // MARK: Main Section
                // Notifications, General, Focus, Airplane Mode, Cellular, Wi-Fi, Bluetooth
                Section {
                    ForEach(mainSectionList) { item in
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
