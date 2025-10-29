//
//  WidgetSuggestionsView.swift
//  NanoSettings
//
//  Settings > Smart Stack > Widget Suggestions
//

import SwiftUI

struct WidgetSuggestionsView: View {
    @State private var allowWidgetSuggestions = true
    let path = "/System/Library/PrivateFrameworks/SmartStackSettingsUI.framework"
    
    var body: some View {
        List {
            Section {
                Toggle("SMART_STACK_SUGGESTION_SETTINGS_GLOBAL_TOGGLE_CELL_TITLE".localized(path: path), isOn: $allowWidgetSuggestions)
            } footer: {
                Text("SMART_STACK_SUGGESTION_SETTINGS_GLOBAL_TOGGLE_FOOTER".localized(path: path))
            }
            
            Section("SMART_STACK_SUGGESTION_SETTINGS_APPS_SECTION_HEADER".localized(path: path)) {
                SettingsLink(
                    "Calendar",
                    subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path),
                    icon: "Calendar"
                ) {}
                SettingsLink(
                    "Check In",
                    subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path),
                    icon: "com.apple.SafetyMonitorApp"
                ) {}
                SettingsLink(
                    "Medications",
                    subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path),
                    icon: "com.apple.NanoMedications"
                ) {}
                SettingsLink(
                    "Music Recognition",
                    subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path),
                    icon: "com.apple.nanomusicrecognition"
                ) {}
                SettingsLink(
                    "News",
                    subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path),
                    icon: "com.apple.nanonews"
                ) {}
                SettingsLink(
                    "Now Playing",
                    subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path),
                    icon: "com.apple.NanoNowPlaying"
                ) {}
                SettingsLink(
                    "Shortcuts",
                    subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path),
                    icon: "com.apple.shortcuts.watch"
                ) {}
                SettingsLink(
                    "Translate",
                    subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path),
                    icon: "com.apple.NanoTranslate"
                ) {}
            }
        }
        .navigationTitle("SMART_STACK_SUGGESTION_SETTINGS_NAVIGATION_TITLE".localized(path: path))
    }
}

#Preview {
    NavigationStack {
        WidgetSuggestionsView()
    }
}
