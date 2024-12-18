//
//  NanoSettingsModel.swift
//  NanoSettings
//
//  Model for storing navigation data.
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

@MainActor let mainSectionList: [NavigationData] = [
    NavigationData(title: "Notifications", icon: "bell.badge.circle.fill", primaryColor: .white, secondaryColor: .red) {
        AnyView(NotificationsView())
    },
    NavigationData(title: "Smart Stack", icon: "smartstack.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(SmartStackView())
    },
    NavigationData(title: "General", icon: "gear.circle.fill", primaryColor: .white, secondaryColor: .gray) {
        AnyView(GeneralView())
    },
    NavigationData(title: "Focus", icon: "moon.circle.fill", primaryColor: .white, secondaryColor: .indigo) {
        AnyView(FocusView())
    },
    NavigationData(title: "Airplane Mode", icon: "airplane.circle.fill", primaryColor: .white, secondaryColor: .orange) {
        AnyView(AirplaneModeView())
    },
    NavigationData(title: "Cellular", icon: "antenna.radiowaves.left.and.right.circle.fill", primaryColor: .white, secondaryColor: .green) {
        AnyView(EmptyView())
    },
    NavigationData(title: "Wi-Fi", icon: "wifi.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(EmptyView())
    },
    NavigationData(title: "Bluetooth", icon: "bluetooth", primaryColor: .white, secondaryColor: .blue) {
        AnyView(EmptyView())
    },
    NavigationData(title: "Display & Brightness", icon: "sun.max.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(DisplayBrightnessView())
    },
    NavigationData(title: "App View", icon: "circle.hexagongrid.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(AppView())
    },
    NavigationData(title: "Gestures", icon: "hand.side.pinch.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(GesturesView())
    },
    NavigationData(title: "Accessibility", icon: "accessibility.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(AccessibilityView())
    },
    NavigationData(title: "Siri", icon: "siri-masked") {
        AnyView(SiriView())
    },
    NavigationData(title: "Sounds & Haptics", icon: "speaker.wave.2.circle.fill", primaryColor: .white, secondaryColor: .pink) {
        AnyView(SoundsHapticsView())
    },
    NavigationData(title: "Passcode", icon: "lock.circle.fill", primaryColor: .white, secondaryColor: .pink) {
        AnyView(PasscodeView())
    },
    NavigationData(title: "SOS", icon: "sos.circle.fill", primaryColor: .white, secondaryColor: .red) {
        AnyView(SOSView())
    },
    NavigationData(title: "Battery", icon: "bolt.circle.fill", primaryColor: .white, secondaryColor: .green) {
        AnyView(EmptyView())
    },
    NavigationData(title: "Privacy & Security", icon: "hand.raised.circle.fill", primaryColor: .white, secondaryColor: .blue) {
        AnyView(PrivacySecurityView())
    }
]

@MainActor let appSectionList: [NavigationData] = [
    NavigationData(title: "Clock", icon: "appleclock") {
        AnyView(ClockView())
    },
    NavigationData(title: "Contacts", icon: "applecontacts") {
        AnyView(ContactsView())
    },
//    NavigationData(title: "Fitness+", icon: "appleworkout") {
//        AnyView(FitnessPlusView())
//    },
    NavigationData(title: "Health", icon: "applehealth") {
        AnyView(HealthView())
    },
    NavigationData(title: "Heart", icon: "appleheart") {
        AnyView(HeartView())
    },
    NavigationData(title: "Workout", icon: "appleworkout") {
        AnyView(WorkoutView())
    }
]
