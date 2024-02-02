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
]
