//
//  LocationServicesView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > Location Services
//

import SwiftUI

struct LocationServicesView: View {
    // Variables
    @State private var locationServicesEnabled = true
    @State private var showingDisableLocationPrompt = false
    
    var body: some View {
        List {
            Toggle("Location Services", isOn: $locationServicesEnabled)
                .onChange(of: locationServicesEnabled, {
                    showingDisableLocationPrompt = !locationServicesEnabled
                })
                .alert("", isPresented: $showingDisableLocationPrompt, actions: {
                    Button("OK", role: .destructive, action: {})
                    Button("Cancel", role: .cancel, action: { locationServicesEnabled.toggle() })
                }, message: {
                    Text("Location Services will also be turned off on your iPhone.")
                })
            
            Section(content: {
                Toggle("Share My Location", isOn: .constant(false))
            }, footer: {
                Text("Share your location with family and friends in Messages and Find People.")
            })
            .disabled(true)
            
            if locationServicesEnabled {
                Section(content: {
                    SymbolLink(title: "Share My Location", subtitle: "When Shared", icon: "com.", content: AnyView(LocationServicesDetailView(title: "Share My Location")))
                    SymbolLink(title: "Siri & Dictation", subtitle: "When Shared", icon: "com.apple.application-icon.siri", content: AnyView(LocationServicesDetailView(title: "Siri & Dictation")))
                    NavigationLink("System Services", destination: SystemServicesView())
                }, footer: {
                    Text("Location indicators are displayed when an app uses the location of your Apple Watch.")
                })
            }
        }
        .navigationTitle("Location Services")
    }
}

#Preview {
    NavigationStack {
        LocationServicesView()
    }
}
