//
//  ReduceLoudSoundsView.swift
//  NanoSettings
//
//  Settings > Sounds & Haptics > Headphone Safety > Reduce Loud Sounds
//

import SwiftUI

struct ReduceLoudSoundsView: View {
    // Variables
    @State private var reduceLoudSoundsEnabled = false
    @State private var decibelsLimit = 85.0
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Reduce Loud Sounds", isOn: $reduceLoudSoundsEnabled)
            }, footer: {
                Text("Your Apple Watch can analyze headphone audio and reduce any sound that is over a set decibel level.")
            })
            
            if reduceLoudSoundsEnabled {
                Section(content: {
                    Slider(
                        value: $decibelsLimit,
                        in: 75...100,
                        step: 5.0
                    ) {
                        Text("Alert Volume")
                    } minimumValueLabel: {
                        Image(systemName: "speaker.fill")
                    } maximumValueLabel: {
                        Image(systemName: "speaker.3.fill")
                    }
                    .tint(.green)
                    .background(Color(.black).opacity(0.9))
                    .cornerRadius(15.0)
                    .padding(.horizontal, -10)
                }, footer: {
                    switch decibelsLimit {
                    case 75.0:
                        Text("Headphone audio will be limited to 75 decibels or as loud as a vacuum cleaner.")
                    case 80.0:
                        Text("Headphone audio will be limited to 80 decibels or as loud as a noisy restaurant.")
                    case 85.0:
                        Text("Headphone audio will be limited to 85 decibels or as loud as heavy city traffic.")
                    case 90.0:
                        Text("Headphone audio will be limited to 90 decibels or as loud as a motorcycle.")
                    case 95.0:
                        Text("Headphone audio will be limited to 95 decibels or as loud as a car horn.")
                    default:
                        Text("Headphone audio will be limited to 100 decibels or as loud as an ambulance siren.")
                    }
                })
            }
        }
        .navigationTitle("Reduce Loud Sounds")
    }
}

#Preview {
    ReduceLoudSoundsView()
}
