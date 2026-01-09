//
//  ClockSoundsView.swift
//  NanoSettings
//

import SwiftUI

/// View for Settings > Clock > Sounds
struct ClockSoundsView: View {
    @AppStorage("ClockSound") private var selected = "TAPTIC_CHIMES_SOUND_BELLS_LABEL"
    private let options = ["TAPTIC_CHIMES_SOUND_BELLS_LABEL", "TAPTIC_CHIMES_SOUND_BIRDS_LABEL"]
    private let path = "/System/Library/PrivateFrameworks/AXTapToSpeakTime.framework"
    
    var body: some View {
        List {
            Picker("", selection: $selected) {
                ForEach(options, id: \.self) { option in
                    Text(option.localized(path: path))
                }
            }
            .pickerStyle(.inline)
            .labelsHidden()
        }
        .navigationTitle("TAPTIC_CHIMES_SOUNDS_TITLE".localized(path: path))
    }
}

#Preview {
    NavigationStack {
        ClockSoundsView()
    }
}
