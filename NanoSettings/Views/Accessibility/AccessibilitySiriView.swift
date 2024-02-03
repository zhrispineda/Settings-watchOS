//
//  AccessibilitySiriView.swift
//  NanoSettings
//
//  Settings > Accessibility > Siri
//

import SwiftUI

struct AccessibilitySiriView: View {
    // Variables
    @State private var typeSiriEnabled = false
    @State private var pauseTimeOption = "Default"
    let pauseTimeOptions = ["Default", "Longer", "Longest"]
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Type to Siri", isOn: $typeSiriEnabled)
            }, footer: {
                Text("When this is on, Siri will allow you to type your requests rather than speaking.")
            })
            
            Section(content: {
                ForEach(pauseTimeOptions, id: \.self) { option in
                    Button(action: {
                        pauseTimeOption = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(pauseTimeOption == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }, header: {
                Text("Siri Pause Time")
            }, footer: {
                Text("Set how long Siri waits for you to finish speaking.")
            })
        }
        .navigationTitle("Siri")
    }
}

#Preview {
    AccessibilitySiriView()
}
