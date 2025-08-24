//
//  FocusView.swift
//  NanoSettings
//
//  Settings > Focus
//

import SwiftUI

struct FocusView: View {
    @State private var mirrorPhoneEnabled = true
    
    var body: some View {
        List {
            Section {
                SettingsLink("DO_NOT_DISTURB_TITLE", icon: "moon.fill", primaryColor: .indigo) {
                    DoNotDisturbView()
                }
            }
            
            Section {
                Toggle("FOCUS_MODES_PAIR_SYNC_SWITCH_TITLE", isOn: $mirrorPhoneEnabled)
            } footer: {
                Text(mirrorPhoneEnabled ? "FOCUS_MODES_SYNC_FOOTER_ON" : "FOCUS_MODES_SYNC_FOOTER_OFF")
            }
        }
        .navigationTitle("FOCUS_MODES")
    }
}

#Preview {
    NavigationStack {
        FocusView()
    }
}
