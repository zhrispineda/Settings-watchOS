//
//  WebsiteDataView.swift
//  NanoSettings
//
//  Settings > General > Website Data
//

import SwiftUI

struct WebsiteDataView: View {
    @State private var showingAlert = false
    
    var body: some View {
        List {
            Section {
                Button("SAFARI_CLEAR_ALL_DATA_TITLE") {
                    showingAlert.toggle()
                }
                .alert(isPresented: $showingAlert) {
                    Alert(
                        title: Text(""),
                        message: Text("SAFARI_DESCRIPTION_TEXT"),
                        primaryButton: .cancel(),
                        secondaryButton: .destructive(Text("SAFARI_CLEAR_DATA_TITLE"))
                    )
                }
            } footer: {
                Text("SAFARI_DESCRIPTION_TEXT")
            }
        }
        .navigationTitle("STATUS_BAR_TITLE_SAFARI")
    }
}

#Preview {
    NavigationStack {
        WebsiteDataView()
    }
}
