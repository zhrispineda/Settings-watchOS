//
//  HeadphoneSafetyView.swift
//  NanoSettings
//
//  Settings > Sounds & Haptics > Headphone Safety
//

import SwiftUI

struct HeadphoneSafetyView: View {
    var body: some View {
        List {
            Section(content: {
                NavigationLink(destination: HeadphoneNotificationsView(), label: {
                    RowLabel(title: "Last 6 Months", subtitle: "0 notifications")
                })
            }, header: {
                Text("Headphone Notifications")
            }, footer: {
                Text("To protect your hearing, your Apple Watch will measure headphone audio levels. If you exceed the recommended 7-day limit, a notification is sent and the volume is turned down. In certain regions, these notifications are required.")
            })
            
            Section {
                NavigationLink(destination: ReduceLoudSoundsView(), label: {
                    RowLabel(title: "Reduce Loud Sounds", subtitle: "Off")
                })
            }
        }
        .navigationTitle("Headphone Safety")
    }
}

#Preview {
    NavigationStack {
        HeadphoneSafetyView()
    }
}
