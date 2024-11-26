//
//  AboutView.swift
//  NanoSettings
//
//  Settings > General > About
//

import SwiftUI

struct AboutView: View {
    // Variables
    @State private var showingModelID = false
    
    var body: some View {
        List {
            ClearRow(title: "Name", subtitle: "Apple Watch")
            ClearRow(title: "watchOS Version", subtitle: "11.1 (22R585)")
            ClearRow(title: "Model Name", subtitle: "Apple Watch")
            
            // Model Row
            VStack(alignment: .leading) {
                Button {
                    withAnimation {
                        showingModelID.toggle()
                    }
                } label: {
                    Text("Model Number")
                    Text(showingModelID ? "A2984LL/A" : "A2984")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
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
