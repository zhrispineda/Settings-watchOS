//
//  PrivacySecurityView.swift
//  NanoSettings
//
//  Settings > Privacy & Security
//

import SwiftUI

struct PrivacySecurityView: View {
    var body: some View {
        List {
            Section(content: {
                SettingsLink(title: "Location Services", icon: "location.circle.fill", primaryColor: .white, secondaryColor: .blue, content: { LocationServicesView() })
                NavigationLink(destination: {}, label: {
                    IconLabel(title: "Contacts", icon: "applecontacts")
                })
                SettingsLink(title: "Calendar", icon: "calendar.circle.fill", primaryColor: .red, secondaryColor: .white, content: {})
                NavigationLink(destination: {}, label: {
                    IconLabel(title: "Reminders", icon: "applereminders")
                })
                SettingsLink(title: "Bluetooth", icon: "logo.bluetooth", primaryColor: .white, secondaryColor: .blue, content: {})
                SettingsLink(title: "Microphone", icon: "mic.circle.fill", primaryColor: .white, secondaryColor: .red, content: {})
                NavigationLink(destination: {}, label: {
                    IconLabel(title: "Health", icon: "applehealth")
                })
                NavigationLink(destination: {}, label: {
                    IconLabel(title: "HomeKit", icon: "applehome")
                })
                SettingsLink(title: "Motion & Fitness", icon: "figure.run.circle.fill", primaryColor: .white, secondaryColor: .green, content: {})
                IconLabel(title: "Analytics & Improvements", icon: "custom.chart.bar.xaxis.circle.fill")
                SettingsLink(title: "Motion & Fitness", icon: "figure.fall.circle.fill", primaryColor: .white, secondaryColor: .blue, content: {})
                SettingsLink(title: "Focus", icon: "moon.circle.fill", primaryColor: .white, secondaryColor: .indigo, content: {})
            }, footer: {
                Text("Some privacy settings are shared between Apple Watch and iPhone. You can manage these settings in the Privacy section of iPhone settings.")
            })
        }
        .navigationTitle("Privacy & Security")
    }
}

#Preview {
    NavigationStack {
        PrivacySecurityView()
    }
}
