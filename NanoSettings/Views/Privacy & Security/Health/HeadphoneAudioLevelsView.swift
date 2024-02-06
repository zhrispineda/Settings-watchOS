//
//  HeadphoneAudioLevelsView.swift
//  NanoSettings
//
//  Settings > Privacy & Security > Health > Headphone Audio Levels
//

import SwiftUI

struct HeadphoneAudioLevelsView: View {
    @State private var selected = "Until I Delete"
    let options = ["For 8 Days", "Until I Delete"]
    
    var body: some View {
        List {
            Section(content: {
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
            }, header: {
                Text("Save In Health")
            }, footer: {
                Text("Your device does not record or save any sound to measure audio levels.")
            })
        }
        .navigationTitle("Headphone Audio Levels")
    }
}

#Preview {
    HeadphoneAudioLevelsView()
}
