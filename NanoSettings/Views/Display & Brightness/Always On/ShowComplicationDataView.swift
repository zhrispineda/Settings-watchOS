//
//  ShowComplicationDataView.swift
//  NanoSettings
//
//  Settings > Display & Brightness > Always On > Show Complication Data
//

import SwiftUI

struct ShowComplicationDataView: View {
    // Variables
    @State private var showComplicationDataEnabled = true
    @State private var siriCardsEnabled = true
    let apps = ["Calculator", "Maps", "News", "Now Playing", "Settings", "Shortcuts"]
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Show Complication Data", isOn: $showComplicationDataEnabled)
            }, footer: {
                Text(showComplicationDataEnabled ? "You can choose which complications show data when your wrist is down." : "")
            })
            
            if showComplicationDataEnabled {
                Section(content: {
                    ForEach(apps, id: \.self) { app in
                        IconToggle(title: app, icon: "apple\(app.lowercased())")
                    }
                }, header: {
                    Text("Apps")
                })
                
                Section(content: {
                    Toggle("Siri Cards", isOn: $siriCardsEnabled)
                }, header: {
                    Text("Siri")
                })
            }
        }
        .navigationTitle("Show Complication Data")
    }
}

#Preview {
    ShowComplicationDataView()
}
