//
//  VoicesDetailView.swift
//  NanoSettings
//
//  Settings > Accessibility > Live Speech > [Language] > [Voice]
//

import SwiftUI

struct VoicesDetailView: View {
    // Variables
    @State private var selected = "Samantha"
    var title = String()
    var language = String()
    
    var body: some View {
        List {
            Section(content: {
                NavigationLink(destination: {
                    List {
                        Button("Speak Sample", action: {})
                    }
                    .navigationTitle(title)
                }, label: {
                    HStack {
                        Text(title)
                        Spacer()
                        Image(systemName: "checkmark")
                            .foregroundColor(selected == title ? Color.blue : Color.clear)
                    }
                })
            }, header: {
                Text(language)
            })
        }
        .navigationTitle(title)
    }
}

#Preview {
    NavigationStack {
        VoicesDetailView(title: "Samantha", language: "English (US)")
    }
}
