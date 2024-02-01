//
//  NotificationsView.swift
//  NanoSettings
//
//  Settings > Notifications
//

import SwiftUI

struct NotificationsView: View {
    // Variables
    @State private var notificationsIndicatorEnabled = true
    @State private var lockedSummaryEnabled = true
    @State private var tapShowFullNotificationEnabled = false
    
    var body: some View {
        List {
            Section(content: {}, footer: {
                Text("Notifications appear when you‘re wearing your Apple Watch. They won‘t appear on your Apple Watch when you‘re using your iPhone.")
            })
            
            Section(content: {
                Toggle("Notifications Indicator", isOn: $notificationsIndicatorEnabled)
            }, footer: {
                Text("A red dot can appear at the top of your watch face when you have unread notifications. Swipe down to view them.")
            })
            
            Section(content: {
                Toggle("Show Summary When Locked", isOn: $lockedSummaryEnabled)
            }, header: {
                Text("Notification Privacy")
            }, footer: {
                Text("Apple Watch can show a notification summary, or short look, when it‘s locked. This typically has the app icon, name, and a brief headline.")
            })
            
            Section(content: {
                Toggle("Tap to Show Full Notification", isOn: $tapShowFullNotificationEnabled)
            }, footer: {
                Text("Apple Watch can hide the full details of a notification behind a summary until you tap on it.")
            })
            
            Section(content: {
                // TODO: Destination view
                NavigationLink("Show Notifications on Wrist Down", destination: {})
            }, footer: {
                Text("Apple Watch can show your notifications even when your wrist is down.")
            })
        }
        .navigationTitle("Notifications")
    }
}

#Preview {
    NavigationStack {
        NotificationsView()
    }
}
