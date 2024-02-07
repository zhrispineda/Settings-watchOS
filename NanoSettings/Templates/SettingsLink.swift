//
//  SettingsLink.swift
//  NanoSettings
//
//  For displaying NavigationLinks with an icon with symbols and images
//
//  Parameters:
//
//  title: Text for the cell
//  icon: Name of SF Symbol or Image
//  primaryColor: Color of primary color
//  secondaryColor: Color of secondary color (Optional)
//  content: View for cell navigate to

import SwiftUI

struct SettingsLink<Content: View>: View {
    // Variables
    let title: String
    let icon: String
    let primaryColor: Color
    let secondaryColor: Color
    let content: Content
    
    init(title: String, icon: String, primaryColor: Color = Color.clear, secondaryColor: Color = Color.clear, @ViewBuilder content: () -> Content) {
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
                if UIImage(systemName: icon) != nil {
                    Image(systemName: icon)
                        .foregroundStyle(primaryColor, secondaryColor)
                } else {
                    switch icon {
                    case "logo.bluetooth":
                        ZStack {
                            Image(systemName: "circle.fill")
                                .foregroundStyle(secondaryColor)
                            Image(icon)
                                .imageScale(.small)
                        }
                    case "custom.chart.bar.xaxis.circle.fill":
                        Image(icon)
                            .foregroundStyle(primaryColor, secondaryColor)
                    default:
                        Image(icon)
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFit()
                            //.frame(height: 20)
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    SettingsLink(title: "Bluetooth", icon: "appleclock", primaryColor: .white, secondaryColor: .blue, content: {})
}
