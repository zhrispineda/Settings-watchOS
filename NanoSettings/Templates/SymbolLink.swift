//
//  SymbolLabel.swift
//  NanoSettings
//
//  A NavigationLink with a title and subtitle with an SF Symbol or image as an icon along with a destination view.
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
    var icon: String = "applesiri"
    var color: Color = Color.blue
    var content: Content
    
    var body: some View {
        NavigationLink(destination: {
            content
        }, label: {
            HStack(spacing: 5) {
                if UIImage(systemName: icon) != nil {
                    Image(systemName: icon)
                        .foregroundStyle(color)
                } else {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(height: 17)
                }
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
