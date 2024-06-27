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

let disabledLinks = ["Cellular", "Wi-Fi", "Bluetooth", "Battery"]

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
        if disabledLinks.contains(title) {
            Button {} label: {
                Label {
                    Text(title)
                } icon: {
                    if UIImage(systemName: icon) != nil {
                        Image(systemName: icon)
                            .foregroundStyle(primaryColor, secondaryColor)
                    } else {
                        switch icon {
                        case "bluetooth":
                            ZStack {
                                Image(systemName: "circle.fill")
                                    .foregroundStyle(secondaryColor)
                                Image(_internalSystemName: icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 7)
                            }
                        default:
                            Image(icon)
                                .resizable()
                                .clipShape(Circle())
                                .scaledToFit()
                        }
                    }
                }
                .labelStyle(CustomStyle())
            }
        } else {
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
                        case "hand.side.pinch.fill":
                            ZStack {
                                Image(systemName: "circle.fill")
                                    .foregroundStyle(secondaryColor)
                                Image(icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 7)
                            }
                        case "bluetooth":
                            ZStack {
                                Image(systemName: "circle.fill")
                                    .foregroundStyle(secondaryColor)
                                Image(_internalSystemName: icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 7)
                            }
                        case "figure.run.motion.circle.fill":
                            Image(_internalSystemName: "figure.run.motion.circle.fill")
                                .foregroundStyle(primaryColor, secondaryColor)
                        case "smartstack.circle.fill":
                            Image(_internalSystemName: icon)
                                .foregroundStyle(primaryColor, secondaryColor)
                        default:
                            Image(icon)
                                .resizable()
                                .clipShape(Circle())
                                .scaledToFit()
                                .frame(height: 18)
                                .padding(.horizontal, 1.5)
                            
                        }
                    }
                }
                .labelStyle(CustomStyle())
            }
        }
    }
}

#Preview {
    NavigationStack {
        List {
            SettingsLink(title: "Title", icon: "figure.run.motion", primaryColor: .white, secondaryColor: .blue, content: {})
        }
    }
    //ContentView()
}

struct CustomStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center) {
            configuration.icon
                .font(.title3)
            configuration.title
        }
    }
}
