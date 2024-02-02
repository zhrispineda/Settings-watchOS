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
    let apps = ["Calculator", "Contacts", "Maps", "Medications", "Now Playing", "Shortcuts", "Siren"]
    
    var body: some View {
        List {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        withAnimation {
                            selected = option
                        }
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }, header: {
                Text("Return to Clock")
            }, footer: {
                Text("Apple Watch will return to the Clock Face \(selected == "Always" ? "on wrist down.": "after \(selected == "After 2 minutes" ? "2 minutes" : "1 hour") of displaying a launched App or after the Digital Crown is pressed.")")
            })
            
            Section(content: {
                ForEach(apps, id: \.self) { app in
                    if app == "Siren" {
                        if WKInterfaceDevice().name.contains("Ultra") {
                            IconLabel(title: app, icon: "apple\(app.lowercased())")
                        }
                    } else {
                        IconLabel(title: app, icon: "apple\(app.lowercased())")
                    }
                }
            }, header: {
                Text("Apps")
            })
        }
        .navigationTitle("Return to Clock")
    }
}

#Preview {
    NavigationStack {
        ReturnClockView()
    }
}
