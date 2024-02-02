//
//  DoNotDisturbView.swift
//  NanoSettings
//
//  Settings > Focus > Do Not Disturb
//

import SwiftUI

struct DoNotDisturbView: View {
    var body: some View {
        List {
            Section(content: {
                SymbolLink(title: "12:00 AM to 12:00 AM", subtitle: "Disabled", icon: "clock", content: ScheduleView())
                SymbolLink(title: "Add new...", icon: "plus", content: ScheduleView(fromTime: "9:00 AM", toTime: "5:00 AM", scheduleEnabled: true))
            }, header: {
                Text("Turn on Automatically")
            })
        }
        .navigationTitle("Do Not Disturb")
    }
}

#Preview {
    NavigationStack {
        DoNotDisturbView()
    }
}
