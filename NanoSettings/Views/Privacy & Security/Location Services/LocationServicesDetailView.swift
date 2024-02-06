//
//  LocationServicesDetailView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > Location Services > [App]
//

import SwiftUI

struct LocationServicesDetailView: View {
    var title = String()
    
    var body: some View {
        List {
            Section(content: {
                Button("Never", action: {})
                Button(action: {}, label: {
                    HStack {
                        Text("When I Share")
                        Spacer()
                        Image(systemName: "checkmark")
                    }
                })
                Button("Always", action: {})
            }, header: {
                Text("Allow Location Access")
            })
            .disabled(true)
            
            Section(content: {
                Toggle("Precise Location", isOn: .constant(true))
            }, footer: {
                Text("Allows apps to use your specific location. With this setting off, apps can only determine your approximate location.")
            })
            .disabled(true)
        }
        .navigationTitle(title)
    }
}

#Preview {
    LocationServicesDetailView()
}
