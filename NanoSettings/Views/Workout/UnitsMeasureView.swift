//
//  UnitsMeasureView.swift
//  NanoSettings
//
//  Settings > Workout > Units of Measure
//

import SwiftUI

struct UnitsMeasureView: View {
    @AppStorage("EnergyUnits") private var selectedEnergyUnit = "ENERGY_UNITS_CALORIES_LABEL"
    @AppStorage("PoolLengthUnit") private var selectedPoolLengthUnit = "POOL_LENGTH_YARDS_LABEL"
    @AppStorage("CyclingUnit") private var selectedCyclingWorkout = "STANDARD_WORKOUTS_DISTANCE_UNIT_MILES_LABEL"
    @AppStorage("WalkingRunningUnit") private var selectedWalkingRunningWorkout = "STANDARD_WORKOUTS_DISTANCE_UNIT_MILES_LABEL"
    @AppStorage("AutoTrackUnit") private var selectedAutoTrackDetection = "POOL_LENGTH_METERS_LABEL"
    @AppStorage("CrossCountryUnit") private var selectedCrossCountryWorkout = "STANDARD_WORKOUTS_DISTANCE_UNIT_MILES_LABEL"
    @AppStorage("DownhillSnowUnit") private var selectedDownhillSnowSportsWorkout = "STANDARD_WORKOUTS_DISTANCE_UNIT_MILES_LABEL"
    @AppStorage("RowingUnit") private var selectedRowingWorkout = "STANDARD_WORKOUTS_DISTANCE_UNIT_KILOMETERS_LABEL"
    @AppStorage("PaddlingUnit") private var selectedPaddlingWorkout = "STANDARD_WORKOUTS_DISTANCE_UNIT_MILES_LABEL"
    @AppStorage("SkatingUnit") private var selectedSkatingWorkout = "STANDARD_WORKOUTS_DISTANCE_UNIT_MILES_LABEL"
    private let energyUnitOptions = [
        "ENERGY_UNITS_CALORIES_LABEL",
        "ENERGY_UNITS_KILOCALORIES_LABEL",
        "ENERGY_UNITS_KILOJOULES_LABEL"
    ]
    private let poolLengthUnitOptions = [
        "POOL_LENGTH_YARDS_LABEL",
        "POOL_LENGTH_METERS_LABEL"
    ]
    private let autoTrackDetectOptions = [
        "STANDARD_WORKOUTS_DISTANCE_UNIT_MILES_LABEL",
        "POOL_LENGTH_METERS_LABEL"
    ]
    private let unitOptions = [
        "STANDARD_WORKOUTS_DISTANCE_UNIT_MILES_LABEL",
        "STANDARD_WORKOUTS_DISTANCE_UNIT_KILOMETERS_LABEL"
    ]
    private let path = "/System/Library/PreferenceBundles/WorkoutSettings.bundle"
    
    var body: some View {
        List {
            Picker("ENERGY_UNITS_TITLE".localized(path: path), selection: $selectedEnergyUnit) {
                ForEach(energyUnitOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            
            Picker("POOL_LENGTH_TITLE".localized(path: path), selection: $selectedPoolLengthUnit) {
                ForEach(poolLengthUnitOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            
            Picker("CYCLING_WORKOUTS_TITLE".localized(path: path), selection: $selectedCyclingWorkout) {
                ForEach(unitOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            
            Picker("WALKING_RUNNING_WORKOUTS_TITLE".localized(path: path), selection: $selectedWalkingRunningWorkout) {
                ForEach(unitOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            
            Picker("TRACK_WORKOUTS_TITLE".localized(path: path), selection: $selectedAutoTrackDetection) {
                ForEach(autoTrackDetectOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            
            Picker("CROSS_COUNTRY_SKIING_WORKOUTS_TITLE".localized(path: path), selection: $selectedCrossCountryWorkout) {
                ForEach(unitOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            
            Picker("DOWNHILL_SNOW_SPORTS_WORKOUTS_TITLE".localized(path: path), selection: $selectedDownhillSnowSportsWorkout) {
                ForEach(unitOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            
            Picker("ROWING_WORKOUTS_TITLE".localized(path: path), selection: $selectedRowingWorkout) {
                ForEach(unitOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            
            Picker("PADDLE_SPORTS_WORKOUTS_TITLE".localized(path: path), selection: $selectedPaddlingWorkout) {
                ForEach(unitOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            
            Picker("SKATING_SPORTS_WORKOUTS_TITLE".localized(path: path), selection: $selectedSkatingWorkout) {
                ForEach(unitOptions, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
        }
        .navigationTitle("UNITS_OF_MEASURE_PANE_TITLE".localized(path: path))
    }
}

#Preview {
    NavigationStack {
        UnitsMeasureView()
    }
}
