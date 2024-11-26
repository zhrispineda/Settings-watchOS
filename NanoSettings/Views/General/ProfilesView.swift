//
//  ProfilesView.swift
//  NanoSettings
//
//  Settings > General > Profiles
//

import SwiftUI

struct ProfilesView: View {
    var body: some View {
        List {
            Section {
                Spacer()
                    .listRowBackground(Color.clear)
            } footer: {
                Text("No profiles are currently installed.")
            }
        }
        .navigationTitle("Profiles")
    }
}

#Preview {
    NavigationStack {
        ProfilesView()
    }
}
