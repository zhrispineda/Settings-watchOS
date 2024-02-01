//
//  GeneralView.swift
//  NanoSettings
//
//  Settings > General
//

import SwiftUI

struct GeneralView: View {
    var body: some View {
        List {
            NavigationLink("About", destination: AboutView())
            NavigationLink("Software Update", destination: SoftwareUpdateView())
            NavigationLink("Orientation", destination: OrientationView())
            NavigationLink("Auto-Launch", destination: {})
            NavigationLink("Background App Refresh", destination: {})
            NavigationLink("Return to Clock", destination: {})
            NavigationLink("Nightstand Mode", destination: {})
            NavigationLink("Handoff", destination: {})
            NavigationLink("Website Data", destination: {})
            NavigationLink("Profiles", destination: {})
        }
        .navigationTitle("General")
    }
}

#Preview {
    NavigationStack {
        GeneralView()
    }
}
