//
//  LiveActivitiesView.swift
//  NanoSettings
//
//  Settings > Smart Stack > Live Activities
//

import SwiftUI

struct LiveActivitiesView: View {
    @State private var allowLiveActivities = true
    @State private var autoLaunchActivities = true
    
    var body: some View {
        List {
            Section {
                Toggle("Allow Live Activities", isOn: $allowLiveActivities)
            }
            
            if allowLiveActivities {
                Section {
                    Toggle("Auto-Launch Live Activities", isOn: $autoLaunchActivities)
                } header: {
                    Text("When Live Activity Begins")
                } footer: {
                    Text("When a Live Activity is runnning, the Smart Stack will remain pulled up when your wrist is down.")
                }
                
                Section {
                    NavigationLink("Show Live Activities on Wrist Down") {}
                } footer: {
                    Text("You can choose whether Live Activity data is shown or blurred when your wrist is down.")
                }
                
                Section {
                    NavigationLink {} label: {
                        Label("Media Apps", systemImage: "play.circle.fill")
                    }
                }
                
                Section {
                    SettingsLink(title: "Music Recognition", icon: "com.apple.nanomusicrecognition") {}
                    SettingsLink(title: "Workout", icon: "com.") {}
                }
                
                Section {} footer: {
                    Text("Live Activities settings for iOS apps can be managed in the Watch app on iPhone.")
                }
            }
        }
        .navigationTitle("Live Activities")
    }
}

#Preview {
    NavigationStack {
        LiveActivitiesView()
    }
}
