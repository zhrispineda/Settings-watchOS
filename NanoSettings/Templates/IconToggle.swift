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
    // Variables
    @State var isEnabled = true
    var title: String = "Title"
    var icon: String = "Icon"
    
    var body: some View {
        Toggle(isOn: $isEnabled, label: {
            HStack {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(height: 20)
                Text(title)
            }
        })
    }
}

#Preview {
    IconToggle()
}
