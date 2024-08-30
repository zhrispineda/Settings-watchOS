//
//  WidgetSuggestionsView.swift
//  NanoSettings
//
//  Settings > Live Activities > Widget Suggestions
//

import SwiftUI

struct WidgetSuggestionsView: View {
    // Variables
    @State private var allowWidgetSuggestions = true
    
    var body: some View {
        List {
            Section {
                Toggle("Allow Widget Suggestions", isOn: $allowWidgetSuggestions)
            } footer: {
                Text("Automatically add relevant widgets to Smart Stack.")
            }
            
            Section("Apps") {
                SymbolLink(title: "Calendar", subtitle: "Allow All", icon: "circle.fill", content: EmptyView())
                SymbolLink(title: "Check In", subtitle: "Allow All", icon: "circle.fill", content: EmptyView())
                SymbolLink(title: "Medications", subtitle: "Allow All", icon: "circle.fill", content: EmptyView())
                SymbolLink(title: "Music Recognition", subtitle: "Allow All", icon: "circle.fill", content: EmptyView())
                SymbolLink(title: "News", subtitle: "Allow All", icon: "circle.fill", content: EmptyView())
                SymbolLink(title: "Now Playing", subtitle: "Allow All", icon: "circle.fill", content: EmptyView())
                SymbolLink(title: "Shortcuts", subtitle: "Allow All", icon: "circle.fill", content: EmptyView())
                SymbolLink(title: "Translate", subtitle: "Allow All", icon: "circle.fill", content: EmptyView())
            }
        }
        .navigationTitle("Widget Suggestions")
    }
}

#Preview {
    NavigationStack {
        WidgetSuggestionsView()
    }
}
