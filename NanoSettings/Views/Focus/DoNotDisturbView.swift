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
            Section {
                SettingsLink("12:00 AM to 12:00 AM", subtitle: "FOCUS_MODE_TRIGGER_DISABLED", icon: "clock") {
                    ScheduleView()
                }
                SettingsLink("FOCUS_MODE_ADD_NEW_SCHEDULE_TRIGGER", icon: "plus") {
                    ScheduleView(fromTime: "9:00 AM", toTime: "5:00 AM", scheduleEnabled: true)
                }
            } header: {
                Text("FOCUS_MODE_AUTOMATIONS_TITLE")
            }
        }
        .navigationTitle("STATUS_BAR_TITLE_DO_NOT_DISTURB")
    }
}

#Preview {
    NavigationStack {
        DoNotDisturbView()
    }
}
