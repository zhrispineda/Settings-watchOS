//
//  AutoLaunchView.swift
//  NanoSettings
//
//  Settings > General > Auto-Launch
//

import SwiftUI

struct AutoLaunchView: View {
    let path = "/System/Library/PreferenceBundles/CSLNanoLiveActivitiesSettings.bundle"
    let table = "NanoAutoLaunchSettings"
    
    var body: some View {
        List {
            NavigationLink("LIVE_ACTIVITIES_AUTO_LAUNCH_LIVE_ACTIVITIES_SETTINGS_TITLE".localized(path: path, table: table)) {}
        }
        .navigationTitle("AUTO_LAUNCH_APP_TITLE")
    }
}

#Preview {
    NavigationStack {
        AutoLaunchView()
    }
}
