//
//  SoundsHapticsView.swift
//  NanoSettings
//
//  Settings > Sounds & Haptics
//

import SwiftUI

struct SoundsHapticsView: View {
    @State private var alertVolume = 0.00
    @State private var silentModeEnabled = false
    @State private var hapticAlertsEnabled = true
    @State private var selectedHaptics = "Default"
    @State private var crownHapticsEnabled = true
    @State private var systemHapticsEnabled = true
    let hapticOptions = ["Default", "Prominent"]
    
    var body: some View {
        List {
            Section(content: {
                Slider(
                    value: $alertVolume,
                    in: 0...100,
                    step: 6.25
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
                Toggle("Silent Mode", isOn: $silentModeEnabled)
            }, header: {
                Text("Alert Volume")
            }, footer: {
                Text("Silent mode will not silence alarms and timers when Apple Watch is charging.")
            })
            
            Section(content: {
                NavigationLink("Headphone Safety", destination: HeadphoneSafetyView())
            }, header: {
                Text("Headphone Audio")
            })
            
            Section(content: {
                Toggle("Haptic Alerts", isOn: $hapticAlertsEnabled)
                ForEach(hapticOptions, id: \.self) { option in
                    Button(action: {
                        selectedHaptics = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedHaptics == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }, header: {
                Text("Haptics")
            })
            
            Section(content: {
                Toggle("Crown Haptics", isOn: $crownHapticsEnabled)
            }, footer: {
                Text("Apple Watch can play haptics when you rotate the Digital Crown to scroll.")
            })
            
            Section(content: {
                Toggle("System Haptics", isOn: $systemHapticsEnabled)
            }, footer: {
                Text("Play haptics for system controls and interactions.")
            })
        }
        .navigationTitle("Sounds & Haptics")
    }
}

#Preview {
    NavigationStack {
        SoundsHapticsView()
    }
}
