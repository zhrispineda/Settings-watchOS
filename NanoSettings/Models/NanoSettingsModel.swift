//
//  NanoSettingsModel.swift
//  NanoSettings
//
//  Model for storing navigation data.
//

import SwiftUI

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

let mainSectionList: [NavigationData] = [
    NavigationData(title: "Notifications", icon: "bell.badge.circle.fill", primaryColor: .white, secondaryColor: .red, content: {
        AnyView(NotificationsView())
    }),
    NavigationData(title: "General", icon: "gear.circle.fill", primaryColor: .white, secondaryColor: .gray, content: {
        AnyView(GeneralView())
    }),
    NavigationData(title: "Focus", icon: "moon.circle.fill", primaryColor: .white, secondaryColor: .indigo, content: {
        AnyView(FocusView())
    }),
    NavigationData(title: "Airplane Mode", icon: "airplane.circle.fill", primaryColor: .white, secondaryColor: .orange, content: {
        AnyView(AirplaneModeView())
    }),
    NavigationData(title: "Cellular", icon: "antenna.radiowaves.left.and.right.circle.fill", primaryColor: .white, secondaryColor: .green, content: {
        AnyView(EmptyView())
    }),
    NavigationData(title: "Wi-Fi", icon: "wifi.circle.fill", primaryColor: .white, secondaryColor: .blue, content: {
        AnyView(EmptyView())
    }),
    NavigationData(title: "Bluetooth", icon: "logo.bluetooth", primaryColor: .white, secondaryColor: .blue, content: {
        AnyView(EmptyView())
    }),
    NavigationData(title: "Display & Brightness", icon: "sun.max.circle.fill", primaryColor: .white, secondaryColor: .blue, content: {
        AnyView(DisplayBrightnessView())
    }),
    NavigationData(title: "App View", icon: "circle.hexagongrid.circle.fill", primaryColor: .white, secondaryColor: .blue, content: {
        AnyView(AppView())
    }),
    NavigationData(title: "Gestures", icon: "hand.thumbsup.circle.fill", primaryColor: .white, secondaryColor: .blue, content: {
        AnyView(GesturesView())
    }),
    NavigationData(title: "Accessibility", icon: "accessibility.fill", primaryColor: .white, secondaryColor: .blue, content: {
        AnyView(AccessibilityView())
    }),
    NavigationData(title: "Siri", icon: "siri-masked_Normal", content: {
        AnyView(SiriView())
    }),
    NavigationData(title: "Sounds & Haptics", icon: "speaker.wave.2.circle.fill", primaryColor: .white, secondaryColor: .pink, content: {
        AnyView(SoundsHapticsView())
    }),
    NavigationData(title: "Passcode", icon: "lock.circle.fill", primaryColor: .white, secondaryColor: .pink, content: {
        AnyView(PasscodeView())
    }),
    NavigationData(title: "SOS", icon: "sos.circle.fill", primaryColor: .white, secondaryColor: .red, content: {
        AnyView(SOSView())
    }),
    NavigationData(title: "Battery", icon: "bolt.circle.fill", primaryColor: .white, secondaryColor: .green, content: {
        AnyView(EmptyView())
    }),
    NavigationData(title: "Privacy & Security", icon: "hand.raised.circle.fill", primaryColor: .white, secondaryColor: .blue, content: {
        AnyView(PrivacySecurityView())
    })
]

let appSectionList: [NavigationData] = [
    NavigationData(title: "Clock", icon: "appleclock", content: {
        AnyView(ClockView())
    }),
    NavigationData(title: "Contacts", icon: "applecontacts", content: {
        AnyView(ContactsView())
    }),
]
