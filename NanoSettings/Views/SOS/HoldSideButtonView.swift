//
//  HoldSideButtonView.swift
//  NanoSettings
//
//  Settings > SOS > Hold Side Button
//

import SwiftUI

struct HoldSideButtonView: View {
    // Variables
    @State private var holdSideButtonEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Hold Side Button", isOn: $holdSideButtonEnabled)
            }, footer: {
                Text("Press and hold the side button to call emergency services. In certain regions, you may need to choose which number to dial.")
            })
        }
        .navigationTitle("Hold Side Button")
    }
}

#Preview {
    HoldSideButtonView()
}
