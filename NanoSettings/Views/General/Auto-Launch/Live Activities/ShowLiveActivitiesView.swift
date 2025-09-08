//
//  ShowLiveActivitiesView.swift
//  NanoSettings
//
//  Settings > General > Auto-Launch > Live Activities > Show Live Activities on Wrist Down
//

import SwiftUI

struct ShowLiveActivitiesView: View {
    @State private var showLiveActivities = true
    
    var body: some View {
        List {
            Toggle("AOT_PRIVACY_ALL_APPS_LIVE_ACTIVITIES", isOn: $showLiveActivities)
        }
        .navigationTitle("AOT_APP_PRIVACY_LIVE_ACTIVITIES_TITLE")
    }
}

#Preview {
    NavigationStack {
        ShowLiveActivitiesView()
    }
}
