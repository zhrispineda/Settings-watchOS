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
                    RowLabel(title: "Schedule", subtitle: "Hourly")
                })
                NavigationLink(destination: ChimesSoundsView(), label: {
                    RowLabel(title: "Sounds", subtitle: "Bells")
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
