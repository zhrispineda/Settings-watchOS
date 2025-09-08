//
//  LiveActivitiesSettingsView.swift
//  NanoSettings
//
//  Settings > General > Auto-Launch > Live Activities Settings
//

import SwiftUI

struct LiveActivitiesSettingsView: View {
    @State private var allowLiveActivites = true
    @State private var autoLaunchActivities = true
    let path = "/System/Library/PreferenceBundles/CSLNanoLiveActivitiesSettings.bundle"
    let table = "NanoAutoLaunchSettings"
    
    var body: some View {
        List {
            Toggle("LIVE_ACTIVITIES_SETTING".localized(path: path, table: table), isOn: $allowLiveActivites)
            
            if allowLiveActivites {
                Section {
                    Toggle("LIVE_ACTIVITIES_AUTO_LAUNCH_TITLE".localized(path: path, table: table), isOn: $autoLaunchActivities)
                } header: {
                    Text("LIVE_ACTIVITIES_AUTO_LAUNCH_SECTION_TITLE".localized(path: path, table: table))
                } footer: {
                    Text("LIVE_ACTIVITIES_AUTO_LAUNCH_SECTION_FOOTER".localized(path: path, table: table))
                }
                
                Section {
                    NavigationLink("LIVE_ACTIVITIES_PRIVACY_SETTINGS_BUTTON".localized(path: path, table: table)) {
                        ShowLiveActivitiesView()
                    }
                } footer: {
                    Text("LIVE_ACTIVITIES_PRIVACY_SETTINGS_SECTION_FOOTER".localized(path: path, table: table))
                }
                
                Section {
                    SettingsLink("Media Apps", icon: "play.circle.fill", primaryColor: .black, secondaryColor: .white) {
                        LiveActivitiesAppDetailView(app: "Media Apps")
                    }
                }
                
                Section {
                    SettingsLink("Music Recognition", icon: "com.apple.nanomusicrecognition") {
                        LiveActivitiesAppDetailView(app: "Music Recognition")
                    }
                    SettingsLink("LIVE_ACTIVITIES_ALLWORKOUTAPPS_APP_TITLE".localized(path: path, table: table), icon: "com.") {
                        LiveActivitiesAppDetailView(autoLaunchOption: "LIVE_ACTIVITIES_AUTOLAUNCH_SETTING_SMARTSTACK", app: "Workout")
                    }
                }
                
                Section {} footer: {
                    Text("LIVE_ACTIVITIES_COMPANION_SETTINGS".localized(path: path, table: table))
                }
            }
        }
        .navigationTitle("SMART_STACK_LIVE_ACTIVITIES_TITLE")
    }
}

#Preview {
    NavigationStack {
        LiveActivitiesSettingsView()
    }
}
