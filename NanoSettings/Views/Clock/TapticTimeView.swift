//
//  TapticTimeView.swift
//  NanoSettings
//

import SwiftUI

/// View for Settings > Clock > Taptic Time
struct TapticTimeView: View {
    @AppStorage("TapticTime") private var tapticTimeEnabled = false
    @AppStorage("TapticTimeDigits") private var selected = "TAPTIC_TIME_ENCODING_DECIMAL_LABEL"
    private let options = [
        "TAPTIC_TIME_ENCODING_DECIMAL_LABEL",
        "TAPTIC_TIME_ENCODING_TERSE_LABEL",
        "TAPTIC_TIME_ENCODING_MORSE_LABEL"
    ]
    private let path = "/System/Library/PrivateFrameworks/AXTapToSpeakTime.framework"
    
    var body: some View {
        List {
            Section {
                Picker(selection: $selected) {
                    if tapticTimeEnabled {
                        ForEach(options, id: \.self) { option in
                            Text(option.localized(path: path))
                        }
                    }
                } label: {
                    Toggle("TAPTIC_TIME_TITLE".localized(path: path), isOn: $tapticTimeEnabled)
                }
                .pickerStyle(.inline)
            } footer: {
                if tapticTimeEnabled {
                    switch selected {
                    case "Digits":
                        Text("TAPTIC_TIME_ENCODING_DECIMAL_DESCRIPTION".localized(path: path))
                    case "Terse":
                        Text("TAPTIC_TIME_ENCODING_TERSE_DESCRIPTION".localized(path: path))
                    default:
                        Text("TAPTIC_TIME_ENCODING_MORSE_DESCRIPTION".localized(path: path))
                    }
                }
            }
        }
        .navigationTitle("TAPTIC_TIME_TITLE".localized(path: path))
    }
}

#Preview {
    NavigationStack {
        TapticTimeView()
    }
}
