//
//  ClearRow.swift
//  NanoSettings
//

import SwiftUI

/// `VStack` container with a clear background.
///
/// - Parameter title: String title.
/// - Parameter subtitle: String subtitle with a secondary foreground style.
struct ClearRow: View {
    var title: String = "Title"
    var subtitle: String = "Subtitle"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            Text(subtitle)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .listRowBackground(Color.clear)
    }
}

#Preview {
    ClearRow()
}
