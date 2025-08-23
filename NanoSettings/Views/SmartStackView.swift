//
//  SmartStackView.swift
//  NanoSettings
//
//  Settings > Smart Stack
//

import SwiftUI

struct SmartStackView: View {
    let liveActivities = "/System/Library/PreferenceBundles/CSLNanoLiveActivitiesSettings.bundle"
    let smartStack = "/System/Library/PrivateFrameworks/SmartStackSettingsUI.framework"
    let autoLaunchTable = "NanoAutoLaunchSettings"
    
    var body: some View {
        List {
            NavigationLink("LIVE_ACTIVITIES_TITLE".localized(path: liveActivities, table: autoLaunchTable), destination: LiveActivitiesView())
            NavigationLink("SMART_STACK_SUGGESTION_SETTINGS_NAVIGATION_TITLE".localized(path: smartStack), destination: WidgetSuggestionsView())
        }
        .navigationTitle("LIVE_ACTIVITIES_AUTOLAUNCH_SETTING_SMARTSTACK".localized(path: liveActivities, table: autoLaunchTable))
    }
}

#Preview {
    NavigationStack {
        SmartStackView()
    }
}
