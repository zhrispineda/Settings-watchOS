//
//  SettingsLink.swift
//  NanoSettings
//

import SwiftUI

/// A `NavigationLink` container with an icon and text.
///
/// - Parameter title: String text to display next to the icon.
/// - Parameter subtitle: String text to display under the title.
/// - Parameter icon: Name of an SF Symbol or image asset. (Accepts UTIs and bundle IDs)
/// - Parameter primaryColor: Icon color. (Defaults to `.white`)
/// - Parameter secondaryColor: Icon background fill color. (Defaults to `.blue`)
/// - Parameter content: Destination view to push.
struct SettingsLink<Content: View>: View {
    let title: String
    let subtitle: String
    let icon: String
    let primaryColor: Color
    let secondaryColor: Color
    let content: Content
    private let disabledLinks: Set<String> = ["Cellular", "Wi-Fi", "Bluetooth", "Battery"]
    
    init(
        _ title: String,
        subtitle: String = "",
        icon: String,
        primaryColor: Color = .white,
        secondaryColor: Color = .blue,
        @ViewBuilder content: () -> Content
    ) {
        self.title = title
        self.subtitle = subtitle
        self.icon = icon
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.content = content()
    }
    
    var body: some View {
        if disabledLinks.contains(title) {
            Button {} label: {
                Label {
                    VStack(alignment: .leading) {
                        Text(.init(title))
                        if !subtitle.isEmpty {
                            Text(.init(subtitle))
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                    }
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
                    VStack(alignment: .leading) {
                        Text(.init(title))
                        if !subtitle.isEmpty {
                            Text(.init(subtitle))
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                    }
                } icon: {
                    if UIImage(systemName: icon) != nil && icon != "accessibility" && icon != "switch.2" {
                        Image(systemName: icon)
                            .foregroundStyle(primaryColor, secondaryColor)
                    } else if icon.contains("com.apple.graphic") || icon.contains("com.apple.application") {
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
        .environment(SettingsModel())
}
