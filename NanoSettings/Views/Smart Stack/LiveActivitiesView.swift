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
    let path = "/System/Library/PreferenceBundles/CSLNanoLiveActivitiesSettings.bundle"
    let table = "NanoAutoLaunchSettings"
    
    var body: some View {
        List {
            Section {
                Toggle("LIVE_ACTIVITIES_SETTING".localized(path: path, table: table), isOn: $allowLiveActivities)
            }
            
            if allowLiveActivities {
                Section {
                    Toggle("LIVE_ACTIVITIES_AUTO_LAUNCH_TITLE".localized(path: path, table: table), isOn: $autoLaunchActivities)
                } header: {
                    Text("LIVE_ACTIVITIES_AUTO_LAUNCH_SECTION_TITLE".localized(path: path, table: table))
                } footer: {
                    Text("LIVE_ACTIVITIES_AUTO_LAUNCH_SECTION_FOOTER".localized(path: path, table: table))
                }
                
                Section {
                    NavigationLink("LIVE_ACTIVITIES_PRIVACY_SETTINGS_BUTTON".localized(path: path, table: table)) {}
                } footer: {
                    Text("LIVE_ACTIVITIES_PRIVACY_SETTINGS_SECTION_FOOTER".localized(path: path, table: table))
                }
                
                Section {
                    NavigationLink {} label: {
                        Label("LIVE_ACTIVITIES_ALLMUSICAPPS_APP_TITLE".localized(path: path, table: table), systemImage: "play.circle.fill")
                    }
                }
                
                Section {
                    SettingsLink("Music Recognition", icon: "com.apple.nanomusicrecognition") {}
                    SettingsLink("LIVE_ACTIVITIES_ALLWORKOUTAPPS_APP_TITLE".localized(path: path, table: table), icon: "com.") {}
                }
                
                Section {} footer: {
                    Text("LIVE_ACTIVITIES_COMPANION_SETTINGS".localized(path: path, table: table))
                }
            }
        }
        .navigationTitle("LIVE_ACTIVITIES_TITLE".localized(path: path, table: table))
    }
}

#Preview {
    NavigationStack {
        LiveActivitiesView()
    }
}
