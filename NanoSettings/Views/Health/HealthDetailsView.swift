//
//  HealthDetailsView.swift
//  NanoSettings
//
//  Settings > Health > Health Details
//

import SwiftUI

struct HealthDetailsView: View {
    var body: some View {
        List {
            ClearRow(title: "Date of Birth", subtitle: "Not Set")
            ClearRow(title: "Sex", subtitle: "Not Set")
            ClearRow(title: "Height", subtitle: "0’ 0“ ft")
            ClearRow(title: "Weight", subtitle: "0 lbs")
            ClearRow(title: "Blood Type", subtitle: "Not Set")
            ClearRow(title: "Fitzpatrick Skin Type", subtitle: "Not Set")
            ClearRow(title: "Wheelchair", subtitle: "Not Set")
            ClearRow(title: "Medications That Affect Heart Rate", subtitle: "Not Set")
        }
        .navigationTitle("Health Details")
    }
}

#Preview {
    HealthDetailsView()
}
