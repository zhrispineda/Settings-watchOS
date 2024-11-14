//
//  FitnessPlusView.swift
//  NanoSettings
//
//  Settings > Fitness+
//

import SwiftUI

struct FitnessPlusView: View {
    // Variables
    @AppStorage("WorkoutMindfulnessSessionData") private var workoutMindfulnessSessionData = false
    
    var body: some View {
        List {
            Section {
                Toggle("All Workout and Mindfulness Session Data", isOn: $workoutMindfulnessSessionData)
            } footer: {
                Text("Fitness+ can make workout and mindfulness recommendations using data added to Health from other apps.")
            }
        }
        .navigationTitle("Fitness+")
    }
}

#Preview {
    NavigationStack {
        FitnessPlusView()
    }
}
