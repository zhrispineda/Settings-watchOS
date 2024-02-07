//
//  TouchAccommodationsView.swift
//  NanoSettings
//
//  Settings > Accessibility > Touch Accommodations
//

import SwiftUI

struct TouchAccommodationsView: View {
    // Variables
    @State private var touchAccommodationsEnabled = false
    @State private var holdDurationEnabled = false
    @State private var duration = 0.0
    @State private var ignoreRepeatEnabled = false
    @State private var repeatDuration = 0.0
    @State private var tapAssistanceOption = "Off"
    let tapAssistanceOptions = ["Off", "Use Initial Touch Location", "Use Final Touch Location"]
    @State private var gestureDelay = 0.0
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Touch Accommodations", isOn: $touchAccommodationsEnabled)
                    .alert("Important", isPresented: $touchAccommodationsEnabled, actions: {
                        Button("OK", role: .none, action: {})
                        Button("Cancel", role: .cancel, action: { touchAccommodationsEnabled.toggle() })
                    }, message: {
                        Text("Touch Accommodations changes the gestures used to control your\nApple Watch. Are you sure you want to continue?")
                    })
            }, footer: {
                Text("If you have trouble using the touchscreen, adjust the following settings to change how the screen will respond to touches.")
            })
            
            Section(content: {
                Toggle("Hold Duration", isOn: $holdDurationEnabled)
                if holdDurationEnabled {
                    Slider(
                        value: $duration,
                        in: 0...100,
                        step: 16.66
                    ) {
                        Text("Hold Duration")
                    }
                    .tint(.green)
                    .background(Color(.black).opacity(0.9))
                    .cornerRadius(15.0)
                    .padding(.horizontal, -10)
                }
            }, footer: {
                Text("The duration you must touch the screen before a touch is recognized.")
            })
            
            if holdDurationEnabled {
                NavigationLink(destination: SwipeGesturesView(), label: {
                    RowLabel(title: "Swipe Gestures", subtitle: "Off")
                })
            }
            
            Section(content: {
                Toggle("Ignore Repeat", isOn: $ignoreRepeatEnabled)
                if ignoreRepeatEnabled {
                    Slider(
                        value: $repeatDuration,
                        in: 0...100,
                        step: 16.66
                    ) {
                        Text("Ignore Repeat Duration")
                    }
                    .tint(.green)
                    .background(Color(.black).opacity(0.9))
                    .cornerRadius(15.0)
                    .padding(.horizontal, -10)
                }
            }, footer: {
                Text("The duration in which multiple touches are treated as a single touch.")
            })
            
            Section(content: {
                ForEach(tapAssistanceOptions, id: \.self) { option in
                    Button(action: {
                        tapAssistanceOption = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "checkmark")
                                .foregroundStyle(.green)
                                .opacity(tapAssistanceOption == option ? 1 : 0)
                        }
                    })
                }
            }, header: {
                Text("Tap Assistance")
            }, footer: {
                Text("Enable Tap Assistance to allow any single finger gesture to perform a tap.")
            })
            
            if tapAssistanceOption != "Off" {
                Section(content: {
                    Slider(
                        value: $gestureDelay,
                        in: 0...100,
                        step: 16.66
                    ) {
                        Text("Tap Assistance Gesture Delay Duration")
                    }
                    .tint(.green)
                    .background(Color(.black).opacity(0.9))
                    .cornerRadius(15.0)
                    .padding(.horizontal, -10)
                }, header: {
                    Text("Tap Assistance Gesture Delay")
                }, footer: {
                    Text("To perform a tap, lift your finger before the timeout expires. To perform a different gesture, touch the screen until the time-out expires, then perform the gesture.")
                })
            }
        }
        .navigationTitle("Touch Accommodations")
    }
}

#Preview {
    NavigationStack {
        TouchAccommodationsView()
    }
}
