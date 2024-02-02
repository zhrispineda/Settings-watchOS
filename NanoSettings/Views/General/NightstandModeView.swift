//
//  NightstandModeView.swift
//  NanoSettings
//
//  Settings > General > Nightstand Mode
//

import SwiftUI

struct NightstandModeView: View {
    // Variables
    @State private var nightstandModeEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Nightstand Mode", isOn: $nightstandModeEnabled)
            }, footer: {
                Text("You can use Apple Watch as a nightstand clock while it‘s charging. If you have an alarm set on Apple Watch, the screen will gently brighten in the minutes leading up to it.")
            })
        }
        .navigationTitle("Nightstand Mode")
    }
}

#Preview {
    NavigationStack {
        NightstandModeView()
    }
}
