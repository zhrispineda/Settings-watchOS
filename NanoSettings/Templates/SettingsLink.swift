//
//  SettingsLink.swift
//  NanoSettings
//
//  For displaying NavigationLinks with an icon with symbols and images
//
//  Parameters:
//
//  title: Text for the cell
//  symbol: Name of SF Symbol or Image
//  primaryColor: Color of primary color
//  secondaryColor: Color of secondary color (Optional)
//  content: View for cell navigate to

import SwiftUI

struct SettingsLink<Content: View>: View {
    let title: String
    let icon: String
    let primaryColor: Color
    let secondaryColor: Color
    let content: Content
    
    init(title: String, icon: String, primaryColor: Color, secondaryColor: Color = Color.clear, @ViewBuilder content: () -> Content) {
        self.title = title
        self.icon = icon
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.content = content()
    }
    
    var body: some View {
        NavigationLink {
            content
        } label: {
            Label {
                Text(title)
            } icon: {
                switch icon {
                case "applesiri":
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                case "logo.bluetooth":
                    ZStack {
                        Image(systemName: "circle.fill")
                            .foregroundStyle(secondaryColor)
                        Image(icon)
                            .imageScale(.small)
                        }
                default:
                    Image(systemName: icon)
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(primaryColor, secondaryColor)
                    
                }
            }
        }
    }
}

#Preview {
    SettingsLink(title: "Notifications", icon: "bell.circle.fill", primaryColor: .white, secondaryColor: .red, content: {})
}
