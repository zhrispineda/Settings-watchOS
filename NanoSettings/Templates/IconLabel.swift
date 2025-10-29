//
//  IconLabel.swift
//  NanoSettings
//
//  A List row label with an image as an icon.
//
//  Parameters:
//  title: String
//  icon: String
//

import SwiftUI

/// An `HStack` container with an icon and leading title
/// - Parameter title: String title.
/// - Parameter icon: Icon name. (Accepts UTIs and bundle IDs)
struct IconLabel: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 8) {
            if icon.contains("com.apple.graphic-icon") {
                if let asset = UIImage.icon(forUTI: icon) {
                    Image(uiImage: asset)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 19)
                }
            } else if icon.contains("com.apple") {
                if let asset = UIImage.icon(forBundleID: icon) {
                    Image(uiImage: asset)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 19)
                }
            } else {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(height: 17)
            }
            Text(title)
        }
        .padding(.leading, -1)
    }
}

#Preview {
    IconLabel(title: "Settings", icon: "com.apple.NanoSettings")
}
