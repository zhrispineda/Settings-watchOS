//
//  TimeDaylightView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > Health > Time in Daylight
//

import SwiftUI

struct TimeDaylightView: View {
    // Variables
    @State private var timeDaylightEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Time in Daylight", isOn: $timeDaylightEnabled)
            }, footer: {
                Text("Use the sensors to estimate the amount of time you spend in daylight.")
            })
        }
        .navigationTitle("Time in Daylight")
    }
}

#Preview {
    TimeDaylightView()
}
