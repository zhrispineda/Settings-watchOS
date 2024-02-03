//
//  QuickActionsView.swift
//  NanoSettings
//
//  Settings > Accessibility > Quick Actions
//

import SwiftUI

struct QuickActionsView: View {
    // Variables
    @State private var selectedQuickAction = "When AssistiveTouch is Enabled"
    let quickActionsOptions = ["On", "When AssistiveTouch is Enabled", "Off"]
    @State private var selectedAppearance = "Full"
    let appearanceOptions = ["Full", "Minimal"]
    
    var body: some View {
        List {
            Section(content: {}, footer: {
                Text("When prompted, tap your pointer finger and thumb twice quickly to perform the quick action. [Try it out...](#)")
            })
            
            Section {
                ForEach(quickActionsOptions, id: \.self) { option in
                    Button(action: {
                        selectedQuickAction = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedQuickAction == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }
            
            Section(content: {
                ForEach(appearanceOptions, id: \.self) { option in
                    Button(action: {
                        selectedAppearance = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedAppearance == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }, header: {
                Text("Appearance")
            })
        }
        .navigationTitle("Quick Actions")
    }
}

#Preview {
    NavigationStack {
        QuickActionsView()
    }
}
