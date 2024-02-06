//
//  AppPermissionsDetailView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > [Permission]
//

import SwiftUI

struct AppPermissionsDetailView: View {
    // Variables
    @State private var improveSiriDictationEnabled = false
    var title = String()
    
    var body: some View {
        List {
            if title == "Motion & Fitness" {
                Section(content: {}, footer: {
                    Text("Motion & Fitness allows apps to access sensor data including body motion, step count, stairs climbed, and more.")
                })
                
                Section(content: {
                    Toggle("Fitness Tracking", isOn: .constant(true))
                }, footer: {
                    Text("Fitness Tracking stores data on your device which can be used to estimate your motion, mobility, step count, and more.")
                })
                .disabled(true)
            }
            
            if title == "Focus" {
                Section(content: {}, footer: {
                    Text("Your Focus status tells apps and people that you have notifications silenced.")
                })
            }
            
            Section(content: {}, footer: {
                switch title {
                case "Calendars":
                    Text("Apps that have requested access to your calendar events will appear here.")
                case "Bluetooth":
                    Text("Apps that have requested the ability to share data via Bluetooth will appear here. These apps can share data even when you’re not using them.")
                case "Microphone":
                    Text("Applications that have requested access to the microphone will appear here.")
                case "HomeKit":
                    Text("Applications that have requested access to home data will appear here.")
                case "Motion & Fitness":
                    Text("Apps that have requested access to your motion and fitness activity will appear here.")
                case "Analytics & Improvements":
                    Text("Some privacy settings are shared between Apple Watch and iPhone. You can manage these settings in the Privacy section of iPhone settings.")
                case "Fall Detection Data Sharing":
                    Text("Apps you approve can receive data from Apple Watch if a fall is detected. This will allow an app to follow up in case help is needed.")
                case "Focus":
                    Text("Apps that have requested the ability to see and share your Focus status will appear here.")
                default:
                    Text("Applications that have requested access to your \(title.lowercased()) will appear here.")
                }
            })
            
            if title == "Analytics & Improvements" {
                Section(content: {
                    Toggle("Share iPhone & Watch Analytics", isOn: .constant(false))
                }, footer: {
                    Text("Help Apple improve its products by automatically sending daily diagnostic and usage data. Data may include location information. Analytics uses wireless data.")
                })
                .disabled(true)
                
                Section(content: {
                    Toggle("Improve Siri & Dictation", isOn: $improveSiriDictationEnabled)
                }, footer: {
                    Text("Help Apple improve Siri and Dictation by allowing Apple to store and review audio of Siri and Dictation interactions from this Apple Watch.")
                })
            }
            
            if title == "Fall Detection Data Sharing" {
                Section(content: {}, footer: {
                    Text("In case of falls where you don’t seem to move Emergency Services will still be contacted first.")
                })
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    AppPermissionsDetailView()
}
