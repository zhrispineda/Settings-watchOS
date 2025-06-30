//
//  IconToggle.swift
//  NanoSettings
//
//  A Toggle with an image as an icon.
//
//  Parameters:
//  isEnabled: Bool
//  title: String
//  icon: String
//

import SwiftUI

struct IconToggle: View {
    @State var isEnabled = true
    var title: String = "Title"
    var icon: String = "Icon"
    
    var body: some View {
        Toggle(isOn: $isEnabled) {
            HStack {
                if icon.contains("com.") {
                    if let icon = UIImage.icon(forBundleID: icon) {
                        Image(uiImage: icon)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 20)
                    }
                } else {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(height: 20)
                }
                
                Text(title)
            }
        }
    }
}

#Preview {
    IconToggle()
}
