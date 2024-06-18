//
//  RowLabel.swift
//  NanoSettings
//
//  Simple VStack containing a top title text and status secondary text below it
//

import SwiftUI

struct RowLabel: View {
    var title = String()
    var subtitle = String()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            Text(subtitle)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    RowLabel()
}
