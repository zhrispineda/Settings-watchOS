//
//  DoubleTapView.swift
//  NanoSettings
//
//  Settings > Gestures > Double Tap
//

import SwiftUI

struct DoubleTapView: View {
    // Variables
    @State private var doubleTapEnabled = true
    @State private var ignoreDoubleTapEnabled = false
    let playbackOptions = ["Play / Pause", "Skip"]
    let smartStackOptions = ["Advance", "Select"]
    @State private var playbackSelected = "Play / Pause"
    @State private var smartStackSelected = "Advance"
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Double Tap", isOn: $doubleTapEnabled)
            }, footer: {
                Text("Tap your index finger and thumb together twice to answer a call, reply to a message, see your Smart Stack, and more. [Learn more in Tips...](#)")
            })
            
            Section(content: {
                ForEach(playbackOptions, id: \.self) { option in
                    Button(action: {
                        playbackSelected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(playbackSelected == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }, header: {
                Text("Playback")
            })
            
            Section(content: {
                ForEach(smartStackOptions, id: \.self) { option in
                    Button(action: {
                        smartStackSelected = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(smartStackSelected == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }, header: {
                Text("Smart Stack")
            })
            
            Section(content: {
                Toggle("Ignore Double Tap", isOn: $ignoreDoubleTapEnabled)
            }, header: {
                Text("When using Vision Pro")
            }, footer: {
                Text("When this is on, the double tap gesture will be temporarily ignored while using Vision Pro.")
            })
        }
        .navigationTitle("Double Tap")
    }
}

#Preview {
    DoubleTapView()
}
