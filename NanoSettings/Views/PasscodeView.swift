//
//  PasscodeView.swift
//  NanoSettings
//
//  Settings > Passcode
//

import SwiftUI

struct PasscodeView: View {
    // Variables
    @State private var wristDetectionEnabled = true
    @State private var showingDisableWristDetectionPrompt = false
    
    var body: some View {
        List {
            Section {
                Button("Turn Passcode On", action: {})
                Button("Change Passcode", action: {})
            }
            .disabled(true)
            
            Section(content: {
                Toggle("Simple Passcode", isOn: .constant(true))
            }, footer: {
                Text("When this is on, Apple Watch unlocks with simple, 4-digit passcode.")
            })
            .disabled(true)
            
            Section(content: {
                Toggle("Erase Data", isOn: .constant(false))
            }, footer: {
                Text("When this is on, Apple Watch will erase all data after 10 failed passcode attempts.")
            })
            .disabled(true)
            
            Section(content: {
                Toggle("Wrist Detection", isOn: $wristDetectionEnabled)
            }, footer: {
                Text("If you‘re using a passcode, wrist detection locks your watch when you‘re not wearing it, so your information stays secure.")
            })
            .onChange(of: wristDetectionEnabled, {
                showingDisableWristDetectionPrompt = !wristDetectionEnabled
            })
            .alert("", isPresented: $showingDisableWristDetectionPrompt, actions: {
                Button("Turn Off", role: .destructive, action: {})
                Button("Cancel", role: .cancel, action: { wristDetectionEnabled.toggle() })
            }, message: {
                Text("""
                              If you turn off wrist detection:
                              • Your Apple Watch will not lock automatically.
                              • Heart rate tracking and notifications will be turnd off.
                              • Respiratory rate background measurements will be turned off.
                              • Sleep tracking will be unavailable.
                              • Some Activity measurements will be unavailable.
                              • Gestures such as double tap will be turned off.
                              """)
            })
        }
        .navigationTitle("Passcode")
    }
}

#Preview {
    NavigationStack {
        PasscodeView()
    }
}
