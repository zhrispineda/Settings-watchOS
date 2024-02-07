//
//  ClockSoundsView.swift
//  NanoSettings
//
//  Settings > Clock > Sounds
//

import SwiftUI

struct ClockSoundsView: View {
    @State private var selected = "Bells"
    let options = ["Bells", "Birds"]
    
    var body: some View {
        List {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selected = option
                }, label: {
                    HStack {
                        Text(option)
                        Spacer()
                        Image(systemName: "\(selected == option ? "checkmark" : "")")
                            .foregroundStyle(.green)
                    }
                })
            }
        }
        .navigationTitle("Sounds")
    }
}

#Preview {
    ClockSoundsView()
}
