//
//  AboutView.swift
//  NanoSettings
//
//  Settings > General > About
//

import SwiftUI

struct AboutView: View {
    // Variables
    @State private var showingModelID = true
    
    var body: some View {
        List {
            ClearRow(title: "Name", subtitle: "Apple Watch")
            ClearRow(title: "Version", subtitle: "10.4 (21T5196c)")
            
            // Model Row
            VStack(alignment: .leading) {
                Button(action: {
                    withAnimation {
                        showingModelID.toggle()
                    }
                }, label: {
                    Text("Model")
                    Text(showingModelID ? "A2984" : "A2984LL/A")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                })
            }
            .listRowBackground(Color.clear)
            
            ClearRow(title: "Applications", subtitle: "0")
            ClearRow(title: "Legal Info", subtitle: "Tap General > About > Legal in the Apple Watch app on iPhone.")
        }
        .navigationTitle("About")
    }
}

#Preview {
    NavigationStack {
        AboutView()
    }
}
