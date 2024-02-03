//
//  ReduceMotionView.swift
//  NanoSettings
//
//  Settings > Accessibility > Reduce Motion
//

import SwiftUI

struct ReduceMotionView: View {
    // Variables
    @State private var reduceMotionEnabled = false
    @State private var autoPlayMessageEffectsEnabled = true
    
    var body: some View {
        List {
            Section {
                Toggle("Reduce Motion", isOn: $reduceMotionEnabled)
            }
            
            Section(content: {
                Toggle("Auto-Play Message Effects", isOn: $autoPlayMessageEffectsEnabled)
            }, footer: {
                Text("Allows fullscreen effects in the Messages app to auto-play.")
            })
        }
        .navigationTitle("Reduce Motion")
    }
}

#Preview {
    ReduceMotionView()
}
