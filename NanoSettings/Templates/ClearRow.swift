//
//  ClearRow.swift
//  NanoSettings
//
//  Template for a List row cell item with no background.
//
//  Parameters:
//  title: String
//  status: String
//

import SwiftUI

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
