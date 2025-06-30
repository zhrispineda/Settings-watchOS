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
    let table = "Localizable-Notifications"
    
    var body: some View {
        List {
            Section {} footer: {
                Text("NOTIFICATIONS_INSTRUCTIONS", tableName: table)
            }
            
            Section {
                Toggle("NOTIFICATIONS_INDICATOR".localize(table: table), isOn: $notificationsIndicatorEnabled)
            } footer: {
                Text("NOTIFICATIONS_INDICATOR_DESCRIPTION", tableName: table)
            }
            
            Section {
                Toggle("NOTIFICATION_SHOW_SHORTLOOK".localize(table: table), isOn: $lockedSummaryEnabled)
            } header: {
                Text("NOTIFICATION_PRIVACY_HEADER", tableName: table)
            } footer: {
                Text("NOTIFICATION_SHOW_SHORTLOOK_DESCRIPTION", tableName: table)
            }
            
            Section {
                Toggle("NOTIFICATION_PRIVACY".localize(table: table), isOn: $tapShowFullNotificationEnabled)
            } footer: {
                Text("NOTIFICATION_PRIVACY_DESCRIPTION", tableName: table)
            }
            
            Section {
                NavigationLink("NOTIFICATION_AOT_PRIVACY_TITLE".localize(table: table), destination: ShowNotificationsView())
            } footer: {
                Text("NOTIFICATION_AOT_PRIVACY_FOOTER", tableName: table)
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
