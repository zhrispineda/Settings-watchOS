//
//  HandoffView.swift
//  NanoSettings
//
//  Settings > General > Handoff
//

import SwiftUI

struct HandoffView: View {
    // Variables
    @State private var handoffEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Enable Handoff", isOn: $handoffEnabled)
            }, footer: {
                Text("Handoff lets you start something on one device and instantly pick it up on other devices using your iCloud account. The app you‘re using on Apple Watch appears in the app switcher on your iPhone and in the dock on your Mac.")
            })
        }
        .navigationTitle("Handoff")
    }
}

#Preview {
    NavigationStack {
        HandoffView()
    }
}
