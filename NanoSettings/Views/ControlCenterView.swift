//
//  ControlCenterView.swift
//  NanoSettings
//
//  Settings > Control Center
//

import SwiftUI

struct ControlCenterView: View {
    @State private var showingAlert = false
    
    var body: some View {
        List {
            Button("RESET_LAYOUT_TITLE") {
                showingAlert.toggle()
            }
        }
        .navigationTitle("CONTROL_CENTER_SETTINGS_TITLE")
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("RESET_CONTROL_CENTER_CONFIRMATION_TITLE"), primaryButton: .default(Text("RESET_CONTROL_CENTER_CONFIRMATION_ACCEPT")), secondaryButton: .cancel())
        }
    }
}

#Preview {
    NavigationStack {
        ControlCenterView()
    }
}
