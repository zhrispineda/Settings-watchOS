//
//  WorkoutView.swift
//  NanoSettings
//
//  Settings > Workout
//

import SwiftUI

struct WorkoutView: View {
    // Variables
    @State private var lowPowerModeEnabled = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Low Power Mode", isOn: $lowPowerModeEnabled)
            }, footer: {
                Text("Turn on Low Power Mode during a workout. Learn more about [Low Power Mode...](#)")
            })
            
            Section {
                NavigationLink("Units of Measure", destination: UnitsMeasureView())
            }
        }
        .navigationTitle("Workout Data")
    }
}

#Preview {
    NavigationStack {
        WorkoutView()
    }
}
