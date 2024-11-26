//
//  WebsiteDataView.swift
//  NanoSettings
//
//  Settings > General > Website Data
//

import SwiftUI

struct WebsiteDataView: View {
    // Variables
    @State private var showingAlert = false
    
    var body: some View {
        List {
            Section {
                Button("Clear Website Data") {
                    showingAlert.toggle()
                }
                .alert(isPresented: $showingAlert) {
                    Alert(
                        title: Text(""),
                        message: Text("Clearing will remove website cookies, credentials and other browsing data."),
                        primaryButton: .cancel(),
                        secondaryButton: .destructive(Text("Clear Data"))
                    )
                }
            } footer: {
                Text("Clearing will remove web-site cookies, credentials and other browsing data.")
            }
        }
        .navigationTitle("Website Data")
    }
}

#Preview {
    NavigationStack {
        WebsiteDataView()
    }
}
