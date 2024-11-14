//
//  UnitsMeasureView.swift
//  NanoSettings
//
//  Settings > Workout > Units of Measure
//

import SwiftUI

struct UnitsMeasureView: View {
    // Variables
    @AppStorage("EnergyUnits") private var selectedEnergyUnit = "Calories"
    @AppStorage("PoolLengthUnit") private var selectedPoolLengthUnit = "Yards"
    @AppStorage("CyclingUnit") private var selectedCyclingWorkout = "Miles"
    @AppStorage("WalkingRunningUnit") private var selectedWalkingRunningWorkout = "Miles"
    @AppStorage("AutoTrackUnit") private var selectedAutoTrackDetection = "Meters"
    @AppStorage("CrossCountryUnit") private var selectedCrossCountryWorkout = "Miles"
    @AppStorage("DownhillSnowUnit") private var selectedDownhillSnowSportsWorkout = "Miles"
    @AppStorage("RowingUnit") private var selectedRowingWorkout = "Kilometers"
    @AppStorage("PaddlingUnit") private var selectedPaddlingWorkout = "Miles"
    @AppStorage("SkatingUnit") private var selectedSkatingWorkout = "Miles"
    let energyUnitOptions = ["Calories", "Kilocalories", "Kilojoules"]
    let poolLengthUnitOptions = ["Yards", "Meters"]
    let cyclingWorkoutOptions = ["Miles", "Kilometers"]
    let walkingRunningWorkoutOptions = ["Miles", "Kilometers"]
    let autoTrackDetectOptions = ["Miles", "Meters"]
    let crossCountrySkiingWorkoutOptions = ["Miles", "Kilometers"]
    let downhillSnowSportsWorkoutOptions = ["Miles", "Kilometers"]
    let rowingWorkoutOptions = ["Miles", "Kilometers"]
    let paddlingWorkoutOptions = ["Miles", "Kilometers"]
    let skatingWorkoutOptions = ["Miles", "Kilometers"]
    
    var body: some View {
        List {
            Section("Energy Units") {
                ForEach(energyUnitOptions, id: \.self) { option in
                    Button {
                        selectedEnergyUnit = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedEnergyUnit == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
            
            Section("Pool Length Units") {
                ForEach(poolLengthUnitOptions, id: \.self) { option in
                    Button {
                        selectedPoolLengthUnit = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedPoolLengthUnit == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
            
            Section("Cycling Workouts") {
                ForEach(cyclingWorkoutOptions, id: \.self) { option in
                    Button {
                        selectedCyclingWorkout = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedCyclingWorkout == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
            
            Section("Walking and Running Workouts") {
                ForEach(walkingRunningWorkoutOptions, id: \.self) { option in
                    Button {
                        selectedWalkingRunningWorkout = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedWalkingRunningWorkout == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
            
            Section("Automatic Track Detection") {
                ForEach(autoTrackDetectOptions, id: \.self) { option in
                    Button {
                        selectedAutoTrackDetection = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedAutoTrackDetection == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
            
            Section("Cross Country Skiing Workouts") {
                ForEach(crossCountrySkiingWorkoutOptions, id: \.self) { option in
                    Button {
                        selectedCrossCountryWorkout = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedCrossCountryWorkout == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
            
            Section("Downhill Snow Sports Workouts") {
                ForEach(downhillSnowSportsWorkoutOptions, id: \.self) { option in
                    Button {
                        selectedDownhillSnowSportsWorkout = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedDownhillSnowSportsWorkout == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
            
            Section("Rowing Workouts") {
                ForEach(rowingWorkoutOptions, id: \.self) { option in
                    Button {
                        selectedRowingWorkout = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedRowingWorkout == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
            
            Section("Paddling Workouts") {
                ForEach(paddlingWorkoutOptions, id: \.self) { option in
                    Button {
                        selectedPaddlingWorkout = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedPaddlingWorkout == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
            
            Section("Skating Workouts") {
                ForEach(skatingWorkoutOptions, id: \.self) { option in
                    Button {
                        selectedSkatingWorkout = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedSkatingWorkout == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    }
                }
            }
        }
        .navigationTitle("Units of Measure")
    }
}

#Preview {
    NavigationStack {
        UnitsMeasureView()
    }
}
