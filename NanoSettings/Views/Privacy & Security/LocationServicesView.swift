//
//  LocationServicesView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > Location Services
//

import SwiftUI

struct LocationServicesView: View {
    @State private var locationServicesEnabled = true
    @State private var showingDisableLocationPrompt = false
    
    var body: some View {
        List {
            Toggle("Location Services", isOn: $locationServicesEnabled)
            
            Section {
                Toggle("Share My Location", isOn: .constant(false))
            } footer: {
                Text("Share your location with family and friends in Messages and Find People.")
            }
            .disabled(true)
            
            if locationServicesEnabled {
                Section {
                    SettingsLink("Share My Location", subtitle: "When Shared", icon: "com.") {
                        LocationServicesDetailView(title: "Share My Location")
                    }
                    SettingsLink("Siri & Dictation", subtitle: "When Shared", icon: "com.apple.application-icon.siri") {
                        LocationServicesDetailView(title: "Siri & Dictation")
                    }
                    NavigationLink("System Services", destination: SystemServicesView())
                } footer: {
                    Text("Location indicators are displayed when an app uses the location of your Apple Watch.")
                }
            }
        }
        .navigationTitle("Location Services")
        .onChange(of: locationServicesEnabled) {
            showingDisableLocationPrompt = !locationServicesEnabled
        }
        .alert("", isPresented: $showingDisableLocationPrompt) {
            Button("OK", role: .destructive) {}
            Button("Cancel", role: .cancel) { locationServicesEnabled.toggle() }
        } message: {
            Text("Location Services will also be turned off on your iPhone.")
        }
    }
}

#Preview {
    NavigationStack {
        LocationServicesView()
    }
}
