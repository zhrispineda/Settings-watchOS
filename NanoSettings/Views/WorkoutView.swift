//
//  WorkoutView.swift
//  NanoSettings
//

import SwiftUI

/// View for Settings > Workout
struct WorkoutView: View {
    @AppStorage("LowPowerModeToggle") private var lowPowerModeEnabled = false
    private let fitnessPath = "/System/Library/PrivateFrameworks/FitnessUI.framework"
    private let path = "/System/Library/PreferenceBundles/WorkoutSettings.bundle"
    private let meadowTable = "Localizable-meadow"
    private let table = "Settings"
    private var footerText: String {
        "WORKOUT_LOW_POWER_MODE_FOOTER".localized(path: fitnessPath, table: meadowTable)
    }
    private var footerLinkText: String {
        "WORKOUT_LOW_POWER_MODE_FOOTER_LEARN_MORE_LINK".localized(path: fitnessPath, table: meadowTable)
    }
    
    var body: some View {
        List {
            Section {
                Toggle("WORKOUT_MODE_LOW_POWER_LABEL".localized(path: fitnessPath), isOn: $lowPowerModeEnabled)
            } footer: {
                Text(.init(footerText.replacing(
                    footerLinkText,
                    with: "[\(footerLinkText)](pref://lowpowermode)")
                ))
            }
            
            Section {
                NavigationLink("UNITS_OF_MEASURE_LABEL".localized(path: path, table: table), destination: UnitsMeasureView())
            }
        }
        .navigationTitle("SETTINGS_TITLE_UNINSTALLED".localized(path: path, table: table))
        .task {
            lowPowerModeEnabled = ProcessInfo().isLowPowerModeEnabled
        }
    }
}

#Preview {
    NavigationStack {
        WorkoutView()
    }
}
