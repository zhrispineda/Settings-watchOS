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
            NavigationLink("Live Activities", destination: LiveActivitiesView())
            NavigationLink("Widget Suggestions", destination: WidgetSuggestionsView())
        }
        .navigationTitle("Smart Stack")
    }
}

#Preview {
    NavigationStack {
        SmartStackView()
    }
}
