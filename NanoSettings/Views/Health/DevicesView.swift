//
//  DevicesView.swift
//  NanoSettings
//
//  Settings > Health > Devices
//

import SwiftUI

struct DevicesView: View {
    // Variables
    @State private var showingDeleteDataPrompt = false
    
    var body: some View {
        List {
            NavigationLink("watchOS Simulator") {
                List {
                    Section {} footer: {
                        Text("Data from watchOS Simulator cannot be viewed on this watch. You can view Health data from this device on iPhone.")
                    }
                    
                    Section {
                        Button("Delete All watchOS Simulator Data") { showingDeleteDataPrompt.toggle() }
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.red)
                            .alert(isPresented: $showingDeleteDataPrompt) {
                                Alert(
                                    title: Text(""),
                                    message: Text("This will delete all Health data associated with watchOS Simulator from Health."),
                                    primaryButton: .cancel(),
                                    secondaryButton: .destructive(Text("Delete"))
                                )
                            }
                    }
                }
                .navigationTitle("watchOS Simulator")
            }
        }
        .navigationTitle("Devices")
    }
}

#Preview {
    NavigationStack {
        DevicesView()
    }
}
