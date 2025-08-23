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
            NavigationLink("ABOUT_TITLE", destination: AboutView())
            NavigationLink("SOFTWARE_UPDATE_TITLE", destination: SoftwareUpdateView())
            NavigationLink("ORIENTATION_TITLE", destination: OrientationView())
            NavigationLink("AUTO_LAUNCH_APP_TITLE", destination: AutoLaunchView())
            NavigationLink("BACKGROUND_APP_UPDATING_LABEL", destination: BackgroundAppRefreshView())
            NavigationLink("RETURN_TO_CLOCK_CELL_TITLE", destination: ReturnClockView())
            NavigationLink("NIGHTSTAND_MODE_TITLE", destination: NightstandModeView())
            NavigationLink("CONTINUITY_TITLE", destination: HandoffView())
            NavigationLink("SAFARI_TITLE", destination: WebsiteDataView())
            NavigationLink("PROFILES_MDM_TITLE", destination: ProfilesView())
        }
        .navigationTitle("STATUS_BAR_TITLE_GENERAL")
    }
}

#Preview {
    NavigationStack {
        GeneralView()
    }
}
