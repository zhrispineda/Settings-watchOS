//
//  HealthPermissionsView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > Health
//

import SwiftUI

struct HealthPermissionsView: View {
    var body: some View {
        List {
            NavigationLink(destination: HeartRateView(), label: {
                RowLabel(title: "Heart Rate", subtitle: "On")
            })
            NavigationLink(destination: TimeDaylightView(), label: {
                RowLabel(title: "Time in Daylight", subtitle: "On")
            })
            NavigationLink(destination: HeadphoneAudioLevelsView(), label: {
                RowLabel(title: "Headphone Audio Levels", subtitle: "Saved Until I Delete")
            })
        }
        .navigationTitle("Health")
    }
}

#Preview {
    NavigationStack {
        HealthPermissionsView()
    }
}
