//
//  SmartStackView.swift
//  NanoSettings
//
//  Settings > Smart Stack
//

import SwiftUI

struct SmartStackView: View {
    var body: some View {
        List {
            NavigationLink("SMART_STACK_LIVE_ACTIVITIES_TITLE", destination: LiveActivitiesView())
            NavigationLink("SMART_STACK_TITLE", destination: WidgetSuggestionsView())
        }
        .navigationTitle("SMART_STACK_TITLE")
    }
}

#Preview {
    NavigationStack {
        SmartStackView()
    }
}
