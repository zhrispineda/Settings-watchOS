//
//  SOSView.swift
//  NanoSettings
//
//  Settings > SOS
//

import SwiftUI

struct SOSView: View {
    var body: some View {
        List {
            Section {
                NavigationLink(destination: HoldSideButtonView(), label: {
                    VStack(alignment: .leading) {
                        Text("Hold Side Button")
                        Text("Enabled")
                            .foregroundStyle(.secondary)
                    }
                })
            }
            
            Section(content: {
                NavigationLink(destination: MedicalView(), label: {
                    Label("Medical ID", systemImage: "staroflife.fill")
                })
            }, footer: {
                Text("If you use Emergency SOS, your device calls emergency services and sends your emergency contacts a notification that includes your location.")
            })
        }
        .navigationTitle("SOS")
    }
}

#Preview {
    NavigationStack {
        SOSView()
    }
}
