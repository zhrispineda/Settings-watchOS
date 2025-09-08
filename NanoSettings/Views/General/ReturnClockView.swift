//
//  ReturnClockView.swift
//  NanoSettings
//
//  Settings > General > Return to Clock
//

import SwiftUI

struct AppInfo: Hashable {
    let name: String
    let icon: String
}

struct ReturnClockView: View {
    @State private var selected = "RETURN_TO_CLOCK_2_MINUTE_LABEL"
    let options = ["RETURN_TO_CLOCK_TINY_LABEL", "RETURN_TO_CLOCK_2_MINUTE_LABEL", "RETURN_TO_CLOCK_1_HOUR_LABEL"]
    let apps = [
        AppInfo(name: "Calculator", icon: "com.apple.NanoCalculator.watchkitapp"),
        AppInfo(name: "Contacts", icon: "com.apple.NanoContacts"),
        AppInfo(name: "Maps", icon: "com.apple.NanoMaps"),
        AppInfo(name: "Medications", icon: "com.apple.NanoMedications"),
        AppInfo(name: "Messages", icon: "com.apple.MobileSMS"),
        AppInfo(name: "Music Recognition", icon: "com.apple.nanomusicrecognition"),
        AppInfo(name: "Now Playing", icon: "com.apple.NanoNowPlaying"),
        AppInfo(name: "Settings", icon: "com.apple.NanoSettings"),
        AppInfo(name: "Shortcuts", icon: "com.apple.shortcuts.watch"),
        AppInfo(name: "Siren", icon: "com.apple.Mandrake"),
        AppInfo(name: "Translate", icon: "com.apple.NanoTranslate"),
    ]
    
    var body: some View {
        List {
            Section {
                Picker("RETURN_TO_CLOCK_HEADER", selection: $selected) {
                    ForEach(options, id: \.self) { option in
                        Text(.init(option))
                    }
                }
                .labelsHidden()
                .pickerStyle(.inline)
            } header: {
                Text("RETURN_TO_CLOCK_HEADER")
            } footer: {
                switch selected {
                case "RETURN_TO_CLOCK_TINY_LABEL":
                    Text("RETURN_TO_CLOCK_TINY_WINDOW_FOOTER")
                case "RETURN_TO_CLOCK_1_HOUR_LABEL":
                    Text("RETURN_TO_CLOCK_WITHIN_1_HOUR_WINDOW_FOOTER")
                default:
                    Text("RETURN_TO_CLOCK_WITHIN_2_MINUTE_WINDOW_FOOTER")
                }
            }
            
            Section("CUSTOMIZE_APPS_HEADER") {
                ForEach(apps, id: \.self) { app in
                    NavigationLink {
                        ReturnClockDetailView(title: app.name)
                    } label: {
                        IconLabel(title: app.name, icon: app.icon)
                    }
                }
            }
        }
        .navigationTitle("STATUS_BAR_TITLE_RETURN_TO_CLOCK")
    }
}

#Preview {
    NavigationStack {
        ReturnClockView()
    }
}
