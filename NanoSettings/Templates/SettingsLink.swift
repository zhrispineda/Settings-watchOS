//
//  SettingsLink.swift
//  NanoSettings
//

import SwiftUI

let disabledLinks: Set<String> = ["Cellular", "Wi-Fi", "Bluetooth", "Battery"]

/// A NavigationLink container with an icon with symbols and images
///
/// - Parameter title: Text for the cell
/// - Parameter icon: Name of SF Symbol or Image
/// - Parameter primaryColor: Color of primary color
/// - Parameter secondaryColor: (Optional) Color of secondary color
/// - Parameter content: View for cell navigate to
struct SettingsLink<Content: View>: View {
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
                    if UIImage(systemName: icon) != nil && icon != "accessibility" && icon != "switch.2" {
                        Image(systemName: icon)
                            .foregroundStyle(primaryColor, secondaryColor)
                    } else if icon.contains("com.") {
                        if let icon = UIImage.icon(forBundleID: icon) {
                            Image(uiImage: icon)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 20)
                        }
                    } else {
                        switch icon {
                        case "accessibility":
                            ZStack {
                                Image(systemName: "circle.fill")
                                    .foregroundStyle(.blue)
                                Image(_internalSystemName: icon)
                                    .resizable()
                                    .fontWeight(.light)
                                    .scaledToFit()
                                    .frame(height: 17)
                            }
                        case "hand.side.pinch.fill", "switch.2":
                            ZStack {
                                Image(systemName: "circle.fill")
                                    .foregroundStyle(secondaryColor)
                                Image(_internalSystemName: icon)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: icon == "switch.2" ? 10 : 7)
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
                        case "smartstack.circle.fill", "figure.run.motion.circle.fill":
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

struct CustomStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center) {
            configuration.icon
                .font(.title3)
            configuration.title
        }
    }
}

#Preview {
    ContentView()
}
