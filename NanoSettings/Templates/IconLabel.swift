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

struct IconLabel: View {
    var title = "Calculator"
    var icon = "applecalculator"
    
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
    IconLabel()
}
