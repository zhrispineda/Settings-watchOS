//
//  AutoLaunchView.swift
//  NanoSettings
//
//  Settings > General > Auto-Launch
//

import SwiftUI

struct AutoLaunchView: View {
    var body: some View {
        List {
            NavigationLink("Live Activities Settings") {}
        }
        .navigationTitle("Auto-Launch")
    }
}

#Preview {
    NavigationStack {
        AutoLaunchView()
    }
}
