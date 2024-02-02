//
//  SymbolLabel.swift
//  NanoSettings
//
//  A NavigationLink with a title and subtitle with an SF Symbol as an icon along with a destination view.
//
//  Parameters:
//  title: String
//  Subtitle: String
//  icon: String
//  color: Color
//  destination: Content
//

import SwiftUI

struct SymbolLink<Content: View>: View {
    // Variables
    var title: String = "12:00 AM to 12:00 AM"
    var subtitle = String()
    var icon: String = "clock"
    var color: Color = Color.blue
    var content: Content
    
    var body: some View {
        NavigationLink(destination: {
            content
        }, label: {
            HStack {
                Image(systemName: icon)
                    .foregroundStyle(color)
                VStack(alignment: .leading) {
                    Text(title)
                    if !subtitle.isEmpty {
                        Text(subtitle)
                            .foregroundStyle(.secondary)
                    }
                }
            }
        })
    }
}

#Preview {
    SymbolLink(content: EmptyView())
}
