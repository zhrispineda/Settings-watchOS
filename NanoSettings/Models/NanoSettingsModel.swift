//
//  NanoSettingsModel.swift
//  NanoSettings
//

import SwiftUI

struct SettingsItem: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    let color: Color
    let content: () -> AnyView
    
    init(
        title: String,
        icon: String,
        color: Color = Color.clear,
        content: @escaping () -> AnyView
    ) {
        self.title = title
        self.icon = icon
        self.color = color
        self.content = content
    }
}

@Observable final class SettingsModel {
    let mainSectionList: [SettingsItem] = [
        SettingsItem(
            title: "NOTIFICATIONS_SETTINGS_TITLE",
            icon: "bell.badge.circle.fill",
            color: .red
        ) {
            AnyView(
                NotificationsView()
            )
        },
        SettingsItem(
            title: "SMART_STACK_TITLE",
            icon: "smartstack.circle.fill",
            color: .blue
        ) {
            AnyView(
                SmartStackView()
            )
        },
        SettingsItem(
            title: "CONTROL_CENTER_SETTINGS_TITLE",
            icon: "switch.2",
            color: .gray
        ) {
            AnyView(
                ControlCenterView()
            )
        },
        SettingsItem(
            title: "GENERAL_SETTINGS_TITLE",
            icon: "gear.circle.fill",
            color: .gray
        ) {
            AnyView(
                GeneralView()
            )
        },
        SettingsItem(
            title: "FOCUS_MODES",
            icon: "moon.circle.fill",
            color: .indigo
        ) {
            AnyView(
                FocusView()
            )
        },
        SettingsItem(
            title: "AIRPLANE_MODE_TITLE",
            icon: "airplane.circle.fill",
            color: .orange
        ) {
            AnyView(
                AirplaneModeView()
            )
        },
        SettingsItem(
            title: "WIFI_TITLE",
            icon: "wifi.circle.fill",
            color: .blue
        ) {
            AnyView(
                EmptyView()
            )
        },
        SettingsItem(
            title: "BLUETOOTH_TITLE",
            icon: "bluetooth",
            color: .blue
        ) {
            AnyView(
                EmptyView()
            )
        },
        SettingsItem(
            title: "BRIGHTNESS_TITLE",
            icon: "sun.max.circle.fill",
            color: .blue
        ) {
            AnyView(
                DisplayBrightnessView()
            )
        },
        SettingsItem(
            title: "APP_LAYOUT_TITLE",
            icon: "circle.hexagongrid.circle.fill",
            color: .blue
        ) {
            AnyView(
                AppView()
            )
        },
        SettingsItem(
            title: "Gestures",
            icon: "hand.side.pinch.fill",
            color: .blue
        ) {
            AnyView(
                GesturesView()
            )
        },
        SettingsItem(
            title: "ACCESSIBILITY_TITLE",
            icon: "accessibility.fill",
            color: .blue
        ) {
            AnyView(
                AccessibilityView()
            )
        },
        SettingsItem(
            title: "SIRI_TITLE",
            icon: "com.apple.application-icon.siri"
        ) {
            AnyView(
                SiriView()
            )
        },
        SettingsItem(
            title: "VOLUME_TITLE",
            icon: "speaker.wave.2.circle.fill",
            color: .pink
        ) {
            AnyView(
                SoundsHapticsView()
            )
        },
        SettingsItem(
            title: "PASSCODE_TITLE",
            icon: "lock.circle.fill",
            color: .pink
        ) {
            AnyView(
                PasscodeView()
            )
        },
        SettingsItem(
            title: "SOS_TITLE",
            icon: "sos.circle.fill",
            color: .red
        ) {
            AnyView(
                SOSView()
            )
        },
        SettingsItem(
            title: "BATTERY_TITLE",
            icon: "bolt.circle.fill",
            color: .green
        ) {
            AnyView(
                EmptyView()
            )
        },
        SettingsItem(
            title: "PRIVACY_TITLE",
            icon: "hand.raised.circle.fill",
            color: .blue
        ) {
            AnyView(
                PrivacySecurityView()
            )
        }
    ]
    
    let appSectionList: [SettingsItem] = [
        SettingsItem(
            title: "TIME_TITLE",
            icon: "appleclock"
        ) {
            AnyView(
                ClockView()
            )
        },
        SettingsItem(
            title: "CONTACTS",
            icon: "contacts"
        ) {
            AnyView(
                ContactsView()
            )
        },
        SettingsItem(
            title: "HEALTH_SETTINGS_TITLE",
            icon: "applehealth"
        ) {
            AnyView(
                HealthView()
            )
        },
        SettingsItem(
            title: "Workout",
            icon: "appleworkout"
        ) {
            AnyView(
                WorkoutView()
            )
        }
    ]
}

#Preview {
    ContentView()
}
