//
//  NightstandModeView.swift
//  NanoSettings
//
//  Settings > General > Nightstand Mode
//

import SwiftUI

struct NightstandModeView: View {
    @State private var nightstandModeEnabled = true
    
    var body: some View {
        List {
            Section {
                Toggle("NIGHTSTAND_MODE_TITLE", isOn: $nightstandModeEnabled)
            } footer: {
                Text("NIGHTSTAND_MODE_DESC_TEXT")
            }
        }
        .navigationTitle("STATUS_BAR_TITLE_NIGHTSTAND_MODE")
    }
}

#Preview {
    NavigationStack {
        NightstandModeView()
    }
}
