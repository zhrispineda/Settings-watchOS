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
    var title = "12:00 AM to 12:00 AM"
    var subtitle = ""
    var icon = "com.apple.application-icon.siri"
    var color = Color.blue
    var content: Content
    
    var body: some View {
        NavigationLink {
            content
        } label: {
            HStack(spacing: 5) {
                if icon.contains("com.apple.graphic") || icon.contains("com.apple.application") {
                    if let icon = UIImage.icon(forUTI: icon) {
                        Image(uiImage: icon)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 20)
                    }
                } else if icon.contains("com.") {
                    if let icon = UIImage.icon(forBundleID: icon) {
                        Image(uiImage: icon)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 20)
                    }
                } else if UIImage(systemName: icon) != nil {
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
                    Text(.init(title))
                    if !subtitle.isEmpty {
                        Text(.init(subtitle))
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
    }
}

#Preview {
    SymbolLink(content: EmptyView())
}
