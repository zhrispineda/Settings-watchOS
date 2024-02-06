//
//  HealthView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > Health
//

import SwiftUI

struct HealthView: View {
    var body: some View {
        List {
            NavigationLink(destination: HeartRateView(), label: {
                VStack(alignment: .leading) {
                    Text("Heart Rate")
                    Text("On")
                        .foregroundStyle(.secondary)
                }
            })
            NavigationLink(destination: TimeDaylightView(), label: {
                VStack(alignment: .leading) {
                    Text("Time in Daylight")
                    Text("On")
                        .foregroundStyle(.secondary)
                }
            })
            NavigationLink(destination: HeadphoneAudioLevelsView(), label: {
                VStack(alignment: .leading) {
                    Text("Headphone Audio Levels")
                    Text("Saved Until I Delete")
                        .foregroundStyle(.secondary)
                }
            })
        }
        .navigationTitle("Health")
    }
}

#Preview {
    NavigationStack {
        HealthView()
    }
}
