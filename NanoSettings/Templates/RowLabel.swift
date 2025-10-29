//
//  RowLabel.swift
//  NanoSettings
//

import SwiftUI

/// `VStack` container that displays a leading-aligned title and subtitle.
///
/// - Parameter title: String title.
/// - Parameter subtitle: String subtitle, shown with a secondary foreground style.
struct RowLabel: View {
    var title = ""
    var subtitle = ""
    
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
