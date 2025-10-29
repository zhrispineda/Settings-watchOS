//
//  NanoSettingsModel.swift
//  NanoSettings
//

import SwiftUI

/// A model representing a single settings option.
///
/// `SettingsItem` encapsulates the data needed to display a link using `SettingsLink`.
///
/// - Parameter id: A unique value for the item, automatically generated, conforming to `Identifiable`.
/// - Parameter title: Localization key or plain string.
/// - Parameter icon: SF Symbol or asset used to represent the item visually. (Accepts UTIs or bundle IDs)
/// - Parameter color: Color to apply to the icon's fill background. (Default value of `.blue`)
/// - Parameter destination: A closure that produces the destination view, wrapped in `AnyView`.
struct SettingsItem: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    let color: Color
    let destination: () -> AnyView
    
    init(
        title: String,
        icon: String,
        color: Color = .blue,
        destination: @escaping () -> AnyView
    ) {
        self.title = title
        self.icon = icon
        self.color = color
        self.destination = destination
    }
}

/// An observable data model that defines the structure and navigation targets for the app.
@Observable
final class SettingsModel {
    let mainSectionList: [SettingsItem] = [
        SettingsItem(
            title: "NOTIFICATIONS_SETTINGS_TITLE",
            icon: "bell.badge.circle.fill",
            color: .red
        ) {
            AnyView(NotificationsView())
        },
        SettingsItem(
            title: "SMART_STACK_TITLE",
            icon: "smartstack.circle.fill"
        ) {
            AnyView(SmartStackView())
        },
        SettingsItem(
            title: "CONTROL_CENTER_SETTINGS_TITLE",
            icon: "switch.2",
            color: .gray
        ) {
            AnyView(ControlCenterView())
        },
        SettingsItem(
            title: "GENERAL_SETTINGS_TITLE",
            icon: "gear.circle.fill",
            color: .gray
        ) {
            AnyView(GeneralView())
        },
        SettingsItem(
            title: "FOCUS_MODES",
            icon: "moon.circle.fill",
            color: .indigo
        ) {
            AnyView(FocusView())
        },
        SettingsItem(
            title: "AIRPLANE_MODE_TITLE",
            icon: "airplane.circle.fill",
            color: .orange
        ) {
            AnyView(AirplaneModeView())
        },
        SettingsItem(
            title: "WIFI_TITLE",
            icon: "wifi.circle.fill"
        ) {
            AnyView(EmptyView())
        },
        SettingsItem(
            title: "BLUETOOTH_TITLE",
            icon: "bluetooth"
        ) {
            AnyView(EmptyView())
        },
        SettingsItem(
            title: "BRIGHTNESS_TITLE",
            icon: "sun.max.circle.fill"
        ) {
            AnyView(DisplayBrightnessView())
        },
        SettingsItem(
            title: "APP_LAYOUT_TITLE",
            icon: "circle.hexagongrid.circle.fill"
        ) {
            AnyView(AppView())
        },
        SettingsItem(
            title: "Gestures",
            icon: "hand.side.pinch.fill"
        ) {
            AnyView(GesturesView())
        },
        SettingsItem(
            title: "ACCESSIBILITY_TITLE",
            icon: "accessibility.fill"
        ) {
            AnyView(AccessibilityView())
        },
        SettingsItem(
            title: "SIRI_TITLE",
            icon: "com.apple.application-icon.siri"
        ) {
            AnyView(SiriView())
        },
        SettingsItem(
            title: "VOLUME_TITLE",
            icon: "speaker.wave.2.circle.fill",
            color: .pink
        ) {
            AnyView(SoundsHapticsView())
        },
        SettingsItem(
            title: "PASSCODE_TITLE",
            icon: "lock.circle.fill",
            color: .pink
        ) {
            AnyView(PasscodeView())
        },
        SettingsItem(
            title: "SOS_TITLE",
            icon: "sos.circle.fill",
            color: .red
        ) {
            AnyView(SOSView())
        },
        SettingsItem(
            title: "BATTERY_TITLE",
            icon: "bolt.circle.fill",
            color: .green
        ) {
            AnyView(EmptyView())
        },
        SettingsItem(
            title: "PRIVACY_TITLE",
            icon: "hand.raised.circle.fill"
        ) {
            AnyView(PrivacySecurityView())
        }
    ]
    
    let appSectionList: [SettingsItem] = [
        SettingsItem(
            title: "TIME_TITLE",
            icon: "appleclock"
        ) {
            AnyView(ClockView())
        },
        SettingsItem(
            title: "CONTACTS",
            icon: "contacts"
        ) {
            AnyView(ContactsView())
        },
        SettingsItem(
            title: "HEALTH_SETTINGS_TITLE",
            icon: "applehealth"
        ) {
            AnyView(HealthView())
        },
        SettingsItem(
            title: "Workout",
            icon: "appleworkout"
        ) {
            AnyView(WorkoutView())
        }
    ]
}

#Preview {
    ContentView()
        .environment(SettingsModel())
}
