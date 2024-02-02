//
//  WakeDurationView.swift
//  NanoSettings
//
//  Settings > Display & Brightness > Wake Duration
//

import SwiftUI

struct WakeDurationView: View {
    // Variables
    @State private var onTapOption = "Wake for 15 Seconds"
    let options = ["Wake for 15 Seconds", "Wake for 70 Seconds"]
    
    var body: some View {
        List {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        onTapOption = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(onTapOption == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }, header: {
                Text("On Tap")
            }, footer: {
                Text("Choose how long the Apple Watch display stays on when you tap to wake it.")
            })
        }
        .navigationTitle("Wake Duration")
    }
}

#Preview {
    WakeDurationView()
}
