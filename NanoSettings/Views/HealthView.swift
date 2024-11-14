//
//  HealthView.swift
//  NanoSettings
//
//  Settings > Health
//

import SwiftUI

struct HealthView: View {
    var body: some View {
        List {
            Section {
                NavigationLink {
                    List {
                        EmptyView()
                    }
                    .navigationTitle("Data")
                } label: {
                    RowLabel(title: "Health Data", subtitle: "0 categories")
                }
            }
            
            Section {
                NavigationLink(destination: HealthDetailsView()) {
                    Label("Health Details", systemImage: "person.crop.circle")
                }
                NavigationLink(destination: MedicalView()) {
                    Label("Medical ID", systemImage: "staroflife.fill")
                }
            } header: {
                Text("Features")
            } footer: {
                Text("If you use Emergency SOS, your device calls emergency services and sends your emergency contacts a message that includes your location.")
            }
            
            Section {
                Button {} label: {
                    RowLabel(title: "Apps and Services", subtitle: "0 Active")
                }
                NavigationLink(destination: DevicesView()) {
                    RowLabel(title: "Devices", subtitle: "1 active")
                }
            } header: {
                Text("Sources")
            } footer: {
                Text("Manage app and service access to your Health data and see which devices have added data.")
            }
        }
        .navigationTitle("Health")
    }
}

#Preview {
    NavigationStack {
        HealthView()
    }
}
