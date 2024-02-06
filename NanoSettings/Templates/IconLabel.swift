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
        HStack(spacing: 8) {
            if icon == "custom.chart.bar.xaxis.circle.fill" {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(height: 17)
                    .foregroundStyle(.white, .blue)
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
