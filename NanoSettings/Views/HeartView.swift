//
//  HeartView.swift
//  NanoSettings
//
//  Settings > Heart
//

import SwiftUI

struct HeartView: View {
    var body: some View {
        List {
            Section {} footer: {
                Text("The Heart Rate app has been deleted from your Apple Watch.")
            }
        }
        .navigationTitle("Heart")
    }
}

#Preview {
    NavigationStack {
        HeartView()
    }
}
