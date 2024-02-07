//
//  UnitsMeasureView.swift
//  NanoSettings
//
//  Settings > Workout > Units of Measure
//

import SwiftUI

struct UnitsMeasureView: View {
    // Variables
    @State private var selectedEnergyUnit = "Calories"
    @State private var selectedPoolLengthUnit = "Yards"
    @State private var selectedCyclingWorkout = "Miles"
    @State private var selectedWalkingRunningWorkout = "Miles"
    @State private var selectedAutoTrackDetection = "Meters"
    let energyUnitOptions = ["Calories", "Kilocalories", "Kilojoules"]
    let poolLengthUnitOptions = ["Yards", "Meters"]
    let cyclingWorkoutOptions = ["Miles", "Kilometers"]
    let walkingRunningWorkoutOptions = ["Miles", "Kilometers"]
    let autoTrackDetectOptions = ["Miles", "Meters"]
    
    var body: some View {
        List {
            Section(content: {
                ForEach(energyUnitOptions, id: \.self) { option in
                    Button(action: {
                        selectedEnergyUnit = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedEnergyUnit == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    })
                }
            }, header: {
                Text("Energy Units")
            })
            
            Section(content: {
                ForEach(poolLengthUnitOptions, id: \.self) { option in
                    Button(action: {
                        selectedPoolLengthUnit = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedPoolLengthUnit == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    })
                }
            }, header: {
                Text("Pool Length Units")
            })
            
            Section(content: {
                ForEach(cyclingWorkoutOptions, id: \.self) { option in
                    Button(action: {
                        selectedCyclingWorkout = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedCyclingWorkout == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    })
                }
            }, header: {
                Text("Cycling Workouts")
            })
            
            Section(content: {
                ForEach(walkingRunningWorkoutOptions, id: \.self) { option in
                    Button(action: {
                        selectedWalkingRunningWorkout = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedWalkingRunningWorkout == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    })
                }
            }, header: {
                Text("Walking and Running Workouts")
            })
            
            Section(content: {
                ForEach(autoTrackDetectOptions, id: \.self) { option in
                    Button(action: {
                        selectedAutoTrackDetection = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedAutoTrackDetection == option ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    })
                }
            }, header: {
                Text("Automatic Track Detection")
            })
        }
        .navigationTitle("Units of Measure")
    }
}

#Preview {
    UnitsMeasureView()
}
