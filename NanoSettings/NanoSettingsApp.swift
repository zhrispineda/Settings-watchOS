//
//  NanoSettingsApp.swift
//  NanoSettings
//
//  Settings
//

import SwiftUI

@main
struct NanoSettingsApp: App {
    private let model = SettingsModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
        }
    }
}
