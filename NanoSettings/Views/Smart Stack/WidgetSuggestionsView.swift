//
//  WidgetSuggestionsView.swift
//  NanoSettings
//
//  Settings > Live Activities > Widget Suggestions
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
                SymbolLink(title: "Calendar", subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path), icon: "Calendar", content: EmptyView())
                SymbolLink(title: "Check In", subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path), icon: "SafetyMonitorApp", content: EmptyView())
                SymbolLink(title: "Medications", subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path), icon: "applemedications", content: EmptyView())
                SymbolLink(title: "Music Recognition", subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path), icon: "NanoMusicRecognitionIcon", content: EmptyView())
                SymbolLink(title: "News", subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path), icon: "applenews", content: EmptyView())
                SymbolLink(title: "Now Playing", subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path), icon: "applenow playing", content: EmptyView())
                SymbolLink(title: "Shortcuts", subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path), icon: "appleshortcuts", content: EmptyView())
                SymbolLink(title: "Translate", subtitle: "SMART_STACK_SUGGESTION_SETTINGS_APP_GROUP_STATUS_ALLOW_ALL".localized(path: path), icon: "appletranslate", content: EmptyView())
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
