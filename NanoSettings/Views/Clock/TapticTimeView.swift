//
//  TapticTimeView.swift
//  NanoSettings
//
//  Settings > Clock > Taptic Time
//

import SwiftUI

struct TapticTimeView: View {
    // Variables
    @AppStorage("TapticTime") private var tapticTimeEnabled = false
    @AppStorage("TapticTimeDigits") private var selected = "Digits"
    let options = ["Digits", "Terse", "Morse Code"]
    
    var body: some View {
        List {
            Section {
                Toggle("Taptic Time", isOn: $tapticTimeEnabled)
                if tapticTimeEnabled {
                    ForEach(options, id: \.self) { option in
                        Button {
                            selected = option
                        } label: {
                            HStack {
                                Text(option)
                                Spacer()
                                Image(systemName: "\(selected == option ? "checkmark" : "")")
                                    .foregroundStyle(.green)
                            }
                        }
                    }
                }
            } footer: {
                if tapticTimeEnabled {
                    switch selected {
                    case "Digits":
                        Text("Apple Watch will long tap every 10 hours, and short tap for each following hour. Then it will long tap for every ten minutes, and short tap for each following minute.")
                    case "Terse":
                        Text("Apple Watch will long tap for every 5 hours, then short tap for the remaining hours. Then it will long tap for each quarter hour.")
                    default:
                        Text("Apple Watch will tap each digit of the time in Morse code.")
                    }
                }
            }
        }
        .navigationTitle("Taptic Time")
    }
}

#Preview {
    NavigationStack {
        TapticTimeView()
    }
}
