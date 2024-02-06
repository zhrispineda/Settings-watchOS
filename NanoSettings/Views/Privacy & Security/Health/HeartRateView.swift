//
//  HeartRateView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > Health > Heart Rate
//

import SwiftUI

struct HeartRateView: View {
    // Variables
    @State private var heartRateEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Heart Rate", isOn: $heartRateEnabled)
            }, footer: {
                Text("Use the sensors to calculate calories burned, determine when to send notifications, and track your heart rate throughout the day.")
            })
        }
        .navigationTitle("Heart Rate")
    }
}

#Preview {
    HeartRateView()
}
