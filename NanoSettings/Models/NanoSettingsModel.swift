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
]
