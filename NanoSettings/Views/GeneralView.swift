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
            NavigationLink("Auto-Launch", destination: AutoLaunchView())
            NavigationLink("Background App Refresh", destination: BackgroundAppRefreshView())
            NavigationLink("Return to Clock", destination: ReturnClockView())
            NavigationLink("Nightstand Mode", destination: NightstandModeView())
            NavigationLink("Handoff", destination: HandoffView())
            NavigationLink("Website Data", destination: WebsiteDataView())
            NavigationLink("Profiles", destination: ProfilesView())
        }
        .navigationTitle("General")
    }
}

#Preview {
    NavigationStack {
        GeneralView()
    }
}
