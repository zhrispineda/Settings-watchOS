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
                    VStack(alignment: .leading) {
                        Text("Last 6 Months")
                        Text("0 notifications")
                            .foregroundStyle(.secondary)
                    }
                })
            }, header: {
                Text("Headphone Notifications")
            }, footer: {
                Text("To protect your hearing, your Apple Watch will measure headphone audio levels. If you exceed the recommended 7-day limit, a notification is sent and the volume is turned down. In certain regions, these notifications are required.")
            })
            
            Section {
                NavigationLink(destination: ReduceLoudSoundsView(), label: {
                    VStack(alignment: .leading) {
                        Text("Reduce Loud Sounds")
                        Text("Off")
                            .foregroundStyle(.secondary)
                    }
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
