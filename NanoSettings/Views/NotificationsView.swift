//
//  NotificationsView.swift
//  NanoSettings
//
//  Settings > Notifications
//

import SwiftUI

struct NotificationsView: View {
    @State private var notificationsIndicatorEnabled = true
    @State private var lockedSummaryEnabled = true
    @State private var tapShowFullNotificationEnabled = false
    let path = "/System/Library/PreferenceBundles/NanoNotificationSettings.bundle"
    let table = "Localizable-Notifications"
    
    var body: some View {
        List {
            Section {} footer: {
                Text("NOTIFICATIONS_INSTRUCTIONS".localized(path: path, table: table))
            }
            
            Section {
                Toggle("NOTIFICATIONS_INDICATOR".localized(path: path, table: table), isOn: $notificationsIndicatorEnabled)
            } footer: {
                Text("NOTIFICATIONS_INDICATOR_DESCRIPTION".localized(path: path, table: table))
            }
            
            Section {
                Toggle("NOTIFICATION_SHOW_SHORTLOOK".localized(path: path, table: table), isOn: $lockedSummaryEnabled)
            } header: {
                Text("NOTIFICATION_PRIVACY_HEADER".localized(path: path, table: table))
            } footer: {
                Text("NOTIFICATION_SHOW_SHORTLOOK_DESCRIPTION".localized(path: path, table: table))
            }
            
            Section {
                Toggle("NOTIFICATION_PRIVACY".localized(path: path, table: table), isOn: $tapShowFullNotificationEnabled)
            } footer: {
                Text("NOTIFICATION_PRIVACY_DESCRIPTION".localized(path: path, table: table))
            }
            
            Section {
                NavigationLink("NOTIFICATION_AOT_PRIVACY_TITLE".localized(path: path, table: table), destination: ShowNotificationsView())
            } footer: {
                Text("NOTIFICATION_AOT_PRIVACY_FOOTER".localized(path: path, table: table))
            }
        }
        .navigationTitle("NOTIFICATIONS_SETTINGS_TITLE")
    }
}

#Preview {
    NavigationStack {
        NotificationsView()
    }
}
