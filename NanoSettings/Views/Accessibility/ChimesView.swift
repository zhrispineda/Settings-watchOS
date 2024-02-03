//
//  ChimesView.swift
//  NanoSettings
//
//  Settings > Accessibility > Chimes
//

import SwiftUI

struct ChimesView: View {
    // Variables
    @State private var chimesEnabled = false
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Chimes", isOn: $chimesEnabled)
                NavigationLink(destination: ChimesScheduleView(), label: {
                    VStack(alignment: .leading) {
                        Text("Schedule")
                        Text("Hourly")
                            .foregroundStyle(.secondary)
                    }
                })
                NavigationLink(destination: ChimesSoundsView(), label: {
                    VStack(alignment: .leading) {
                        Text("Sounds")
                        Text("Bells")
                            .foregroundStyle(.secondary)
                    }
                })
            }, footer: {
                Text("When this is on, selected sounds and haptics will play on the hour.")
            })
        }
        .navigationTitle("Chimes")
    }
}

#Preview {
    NavigationStack {
        ChimesView()
    }
}
