//
//  AppView.swift
//  NanoSettings
//
//  Settings > App View
//

import SwiftUI

struct AppView: View {
    // Variables
    @State private var selected = "Grid View"
    let options = ["Grid View", "List View"]
    
    var body: some View {
        List {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selected = option
                }, label: {
                    HStack {
                        Label(option, systemImage: option == "Grid View" ? "circle.hexagongrid.fill" : "list.bullet")
                        Spacer()
                        Image(systemName: "\(selected == option ? "checkmark" : "")")
                            .foregroundStyle(.green)
                    }
                })
            }
        }
        .navigationTitle("App View")
    }
}

#Preview {
    AppView()
}
