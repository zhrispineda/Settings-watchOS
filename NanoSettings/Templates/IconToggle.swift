//
//  IconToggle.swift
//  NanoSettings
//

import SwiftUI

/// A toggle combined with an icon.
///
/// - Parameter isEnabled: If the toggle is enabled.
/// - Parameter title: String title text.
/// - Parameter icon: String icon name.
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
