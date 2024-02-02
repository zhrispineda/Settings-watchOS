//
//  AutoLaunchView.swift
//  NanoSettings
//
//  Settings > General > Auto-Launch
//

import SwiftUI

struct AutoLaunchView: View {
    // Variables
    @State private var autoLaunchEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Auto-Launch Audio Apps", isOn: $autoLaunchEnabled)
            }, header: {
                Text("When Playing Audio")
            }, footer: {
                Text("Relevant App will launch when one of your nearby devices starts playing audio.")
            })
        }
        .navigationTitle("Auto-Launch")
    }
}

#Preview {
    NavigationStack {
        AutoLaunchView()
    }
}
