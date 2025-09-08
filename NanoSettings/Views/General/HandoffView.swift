//
//  HandoffView.swift
//  NanoSettings
//
//  Settings > General > Handoff
//

import SwiftUI

struct HandoffView: View {
    @State private var handoffEnabled = true
    
    var body: some View {
        List {
            Section {
                Toggle("ENABLE_CONTINUITY", isOn: $handoffEnabled)
            } footer: {
                Text("CONTINUITY_DESC_TEXT")
            }
        }
        .navigationTitle("CONTINUITY_TITLE")
    }
}

#Preview {
    NavigationStack {
        HandoffView()
    }
}
