//
//  PrivacySecurityView.swift
//  NanoSettings
//

import SwiftUI

/// View for Settings > Privacy & Security
struct PrivacySecurityView: View {
    var body: some View {
        List {
            Section {
                SettingsLink(
                    "LOCATION_SERVICES_TITLE",
                    icon: "location.circle.fill",
                    primaryColor: .white,
                    secondaryColor: .blue,
                    content: { LocationServicesView() }
                )
                NavigationLink(
                    destination: AppPermissionsDetailView(title: "Contacts"),
                    label: {
                        IconLabel(title: "Contacts", icon: "contacts")
                    }
                )
                SettingsLink(
                    "CALENDARS",
                    icon: "calendar.circle.fill",
                    primaryColor: .red,
                    secondaryColor: .white,
                    content: {
                        AppPermissionsDetailView(title: "Calendars")
                    }
                )
                NavigationLink(destination: AppPermissionsDetailView(title: "Reminders")) {
                    IconLabel(title: "Reminders", icon: "Reminders")
                }
                SettingsLink(
                    "Bluetooth",
                    icon: "bluetooth",
                    primaryColor: .white,
                    secondaryColor: .blue,
                    content: {
                        AppPermissionsDetailView(title: "Bluetooth")
                    }
                )
                SettingsLink(
                    "MICROPHONE",
                    icon: "mic.circle.fill",
                    primaryColor: .white,
                    secondaryColor: .red,
                    content: {
                        AppPermissionsDetailView(title: "Microphone")
                    }
                )
                NavigationLink(destination: HealthView()) {
                    IconLabel(title: "Health", icon: "applehealth")
                }
                NavigationLink(destination: AppPermissionsDetailView(title: "HomeKit")) {
                    IconLabel(title: "Home", icon: "Homekit")
                }
                SettingsLink(
                    "MOTION",
                    icon: "figure.run.motion.circle.fill",
                    primaryColor: .white,
                    secondaryColor: .green,
                    content: {
                        AppPermissionsDetailView(title: "Motion & Fitness")
                    }
                )
                NavigationLink(destination: AppPermissionsDetailView(title: "Analytics & Improvements")) {
                    IconLabel(
                        title: "Analytics & Improvements",
                        icon: "com.apple.graphic-icon.analytics-and-improvements"
                    )
                }
                SettingsLink(
                    "SOS_SETTINGS_FALL_DETECTION",
                    icon: "figure.fall.circle.fill",
                    primaryColor: .white,
                    secondaryColor: .blue,
                    content: {
                        AppPermissionsDetailView(title: "Fall Detection Data Sharing")
                    }
                )
                SettingsLink(
                    "FOCUS_MODES",
                    icon: "moon.circle.fill",
                    primaryColor: .white,
                    secondaryColor: .indigo,
                    content: {
                        AppPermissionsDetailView(title: "Focus")
                    }
                )
            } footer: {
                Text(.privacyReadOnlyInstructions)
            }
            
            Button {} label: {
                HStack {
                    Image(systemName: "nosign.app.fill")
                        .foregroundStyle(.white, .red)
                    Text(.blockedContacts)
                }
            }
        }
        .navigationTitle(.privacyTitle)
    }
}

#Preview {
    NavigationStack {
        PrivacySecurityView()
    }
}
