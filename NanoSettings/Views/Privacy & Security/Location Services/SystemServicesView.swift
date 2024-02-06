//
//  SystemServicesView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > Location Services > System Services
//

import SwiftUI

struct SystemServicesView: View {
    var body: some View {
        List {
            Section(content: {}, footer: {
                Text("Some privacy settings are shared between Apple Watch and iPhone. You can manage these settings in the Privacy section of iPhone settings.")
            })
            
            Section(content: {
                Toggle("Alerts & Shortcuts Automations", isOn: .constant(false))
                Toggle("Carbon Analytics", isOn: .constant(true))
                Toggle("Cell Network Search", isOn: .constant(true))
                Toggle("Device Management", isOn: .constant(true))
                Toggle("Networking & Wireless", isOn: .constant(false))
                Toggle("Setting Time Zone", isOn: .constant(true))
                Toggle("Suggestions & Search", isOn: .constant(true))
                Toggle("System Customization", isOn: .constant(false))
            }, header: {
                Text("System Services")
            })
            .disabled(true)
            
            Section(content: {
                Toggle("Apple Watch Analytics", isOn: .constant(true))
                Toggle("Routing & Traffic", isOn: .constant(false))
            }, header: {
                Text("Product Improvement")
            })
            .disabled(true)
            
            Section(content: {
                Toggle("Status Bar Icon", isOn: .constant(false))
            }, footer: {
                Text("Show Location Services icon in the status Bar when the services above request your location")
            })
            .disabled(true)
        }
        .navigationTitle("System Services")
    }
}

#Preview {
    SystemServicesView()
}
