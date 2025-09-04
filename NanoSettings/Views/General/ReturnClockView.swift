//
//  ReturnClockView.swift
//  NanoSettings
//
//  Settings > General > Return to Clock
//

import SwiftUI

struct ReturnClockView: View {
    // Variables
    @State private var selected = "After 2 minutes"
    let options = ["Always", "After 2 minutes", "After 1 hour"]
    let apps = ["Calculator", "Contacts", "Maps", "Medications", "Music Recognition", "Now Playing", "Settings", "Shortcuts", "Siren", "Translate"]
    
    var body: some View {
        List {
            Section {
                ForEach(options, id: \.self) { option in
                    Button {
                        withAnimation {
                            selected = option
                        }
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    }
                }
            } header: {
                Text("Return to Clock")
            } footer: {
                Text("Apple Watch will return to the Clock Face \(selected == "Always" ? "on wrist down.": "after \(selected == "After 2 minutes" ? "2 minutes" : "1 hour") of displaying a launched App or after the Digital Crown is pressed.")")
            }
            
            Section("Apps") {
                ForEach(apps, id: \.self) { app in
                    NavigationLink {
                        ReturnClockDetailView(title: app)
                    } label: {
                        IconLabel(title: app, icon: app == "Music Recognition" ? "com.apple.nanomusicrecognition" : "apple\(app.lowercased())")
                    }
                }
            }
        }
        .navigationTitle("Return to Clock")
    }
}

#Preview {
    NavigationStack {
        ReturnClockView()
    }
}
