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
    // Variables
    var title: String = "Calculator"
    var icon: String = "applecalculator"
    
    var body: some View {
        HStack {
            Image(icon)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(height: 20)
            Text(title)
        }
    }
}

#Preview {
    IconLabel()
}
