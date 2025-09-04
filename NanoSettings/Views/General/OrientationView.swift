//
//  OrientationView.swift
//  NanoSettings
//
//  Settings > General > Orientation
//

import SwiftUI

struct OrientationView: View {
    @State private var wristSelection = "LEFT_WRIST_TITLE_TEXT"
    @State private var digitalCrownSelection = "RIGHT_WRIST_TITLE_TEXT"
    let options = ["LEFT_WRIST_TITLE_TEXT", "RIGHT_WRIST_TITLE_TEXT"]
    
    var body: some View {
        List {
            // Wrist
            Section("WRIST_SECTION_TITLE") {
                Picker("WRIST_SECTION_TITLE", selection: $wristSelection) {
                    ForEach(options, id: \.self) { option in
                        Text(.init(option))
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
            
            // Digital Crown
            Section("CROWN_SECTION_TITLE") {
                Picker("WRIST_SECTION_TITLE", selection: $digitalCrownSelection) {
                    ForEach(options, id: \.self) { option in
                        Text(.init(option))
                    }
                }
                .pickerStyle(.inline)
                .labelsHidden()
            }
        }
        .navigationTitle("STATUS_BAR_TITLE_ORIENTATION")
    }
}

#Preview {
    NavigationStack {
        OrientationView()
    }
}
