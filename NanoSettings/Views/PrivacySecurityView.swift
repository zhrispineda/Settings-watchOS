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
            Section {
                SettingsLink("Location Services", icon: "location.circle.fill", primaryColor: .white, secondaryColor: .blue, content: { LocationServicesView() })
                NavigationLink(destination: AppPermissionsDetailView(title: "Contacts"), label: {
                    IconLabel(title: "Contacts", icon: "contacts")
                })
                SettingsLink("Calendar", icon: "calendar.circle.fill", primaryColor: .red, secondaryColor: .white, content: { AppPermissionsDetailView(title: "Calendars") })
                NavigationLink(destination: { AppPermissionsDetailView(title: "Reminders") }, label: {
                    IconLabel(title: "Reminders", icon: "applereminders")
                })
                SettingsLink("Bluetooth", icon: "bluetooth", primaryColor: .white, secondaryColor: .blue, content: { AppPermissionsDetailView(title: "Bluetooth") })
                SettingsLink("Microphone", icon: "mic.circle.fill", primaryColor: .white, secondaryColor: .red, content: { AppPermissionsDetailView(title: "Microphone") })
                NavigationLink(destination: HealthView(), label: {
                    IconLabel(title: "Health", icon: "applehealth")
                })
                NavigationLink(destination: AppPermissionsDetailView(title: "HomeKit"), label: {
                    IconLabel(title: "HomeKit", icon: "applehome")
                })
                SettingsLink("Motion & Fitness", icon: "figure.run.motion.circle.fill", primaryColor: .white, secondaryColor: .green, content: { AppPermissionsDetailView(title: "Motion & Fitness") })
                NavigationLink(destination: AppPermissionsDetailView(title: "Analytics & Improvements"), label: {
                    IconLabel(title: "Analytics & Improvements", icon: "com.apple.graphic-icon.analytics-and-improvements")
                })
                SettingsLink("Fall Detection", icon: "figure.fall.circle.fill", primaryColor: .white, secondaryColor: .blue, content: { AppPermissionsDetailView(title: "Fall Detection Data Sharing") })
                SettingsLink("Focus", icon: "moon.circle.fill", primaryColor: .white, secondaryColor: .indigo, content: { AppPermissionsDetailView(title: "Focus") })
            } footer: {
                Text("Some privacy settings are shared between Apple Watch and iPhone. You can manage these settings in the Privacy section of iPhone settings.")
            }
        }
        .navigationTitle("Privacy & Security")
    }
}

#Preview {
    NavigationStack {
        PrivacySecurityView()
    }
}
