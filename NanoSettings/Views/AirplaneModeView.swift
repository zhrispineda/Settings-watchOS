//
//  AirplaneModeView.swift
//  NanoSettings
//
//  Settings > Airplane Mode
//

import SwiftUI

struct AirplaneModeView: View {
    // Variables
    @State private var airplaneModeEnabled = false
    
    var body: some View {
        List {
            Toggle("Airplane Mode", isOn: $airplaneModeEnabled)
        }
        .navigationTitle("Airplane Mode")
    }
}

#Preview {
    NavigationStack {
        AirplaneModeView()
    }
}
