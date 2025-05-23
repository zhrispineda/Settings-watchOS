//
//  NanoSettingsModel.swift
//  NanoSettings
//

import SwiftUI

/// Model for storing navigation data.
struct NavigationData: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    let primaryColor: Color
    let secondaryColor: Color
    let content: () -> AnyView
    
    init(title: String, icon: String, primaryColor: Color = Color.clear, secondaryColor: Color = Color.clear, content: @escaping () -> AnyView) {
        self.title = title
        self.icon = icon
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.content = content
    }
}

@MainActor
let mainSectionList: [NavigationData] = [
    NavigationData(title: "NOTIFICATIONS_SETTINGS_TITLE", icon: "bell.badge.circle.fill", primaryColor: .white, secondaryColor: .red) {
        AnyView(NotificationsView())
    },
    NavigationData(title: "SMART_STACK_TITLE", icon: "smartstack.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(SmartStackView())
    },
    NavigationData(title: "GENERAL_SETTINGS_TITLE", icon: "gear.circle.fill", primaryColor: .white, secondaryColor: .gray) {
        AnyView(GeneralView())
    },
    NavigationData(title: "FOCUS_MODES", icon: "moon.circle.fill", primaryColor: .white, secondaryColor: .indigo) {
        AnyView(FocusView())
    },
    NavigationData(title: "AIRPLANE_MODE_TITLE", icon: "airplane.circle.fill", primaryColor: .white, secondaryColor: .orange) {
        AnyView(AirplaneModeView())
    },
//    NavigationData(title: "CELLULAR_TITLE", icon: "antenna.radiowaves.left.and.right.circle.fill", primaryColor: .white, secondaryColor: .green) {
//        AnyView(EmptyView())
//    },
    NavigationData(title: "WIFI_TITLE", icon: "wifi.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(EmptyView())
    },
    NavigationData(title: "BLUETOOTH_TITLE", icon: "bluetooth", primaryColor: .white, secondaryColor: .blue) {
        AnyView(EmptyView())
    },
    NavigationData(title: "BRIGHTNESS_TITLE", icon: "sun.max.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(DisplayBrightnessView())
    },
    NavigationData(title: "APP_LAYOUT_TITLE", icon: "circle.hexagongrid.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(AppView())
    },
    NavigationData(title: "Gestures", icon: "hand.side.pinch.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(GesturesView())
    },
    NavigationData(title: "ACCESSIBILITY_TITLE", icon: "accessibility", primaryColor: .white, secondaryColor: .white) {
        AnyView(AccessibilityView())
    },
    NavigationData(title: "SIRI_TITLE", icon: "siri-masked") {
        AnyView(SiriView())
    },
    NavigationData(title: "VOLUME_TITLE", icon: "speaker.wave.2.circle.fill", primaryColor: .white, secondaryColor: .pink) {
        AnyView(SoundsHapticsView())
    },
    NavigationData(title: "PASSCODE_TITLE", icon: "lock.circle.fill", primaryColor: .white, secondaryColor: .pink) {
        AnyView(PasscodeView())
    },
    NavigationData(title: "SOS_TITLE", icon: "sos.circle.fill", primaryColor: .white, secondaryColor: .red) {
        AnyView(SOSView())
    },
    NavigationData(title: "BATTERY_TITLE", icon: "bolt.circle.fill", primaryColor: .white, secondaryColor: .green) {
        AnyView(EmptyView())
    },
    NavigationData(title: "PRIVACY_TITLE", icon: "hand.raised.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(PrivacySecurityView())
    }
]

@MainActor
let appSectionList: [NavigationData] = [
    NavigationData(title: "TIME_TITLE", icon: "appleclock") {
        AnyView(ClockView())
    },
    NavigationData(title: "CONTACTS", icon: "applecontacts") {
        AnyView(ContactsView())
    },
    NavigationData(title: "HEALTH_SETTINGS_TITLE", icon: "applehealth") {
        AnyView(HealthView())
    },
    NavigationData(title: "Heart", icon: "appleheart") {
        AnyView(HeartView())
    },
    NavigationData(title: "Workout", icon: "appleworkout") {
        AnyView(WorkoutView())
    }
]
