//
//  ClockView.swift
//  NanoSettings
//

import SwiftUI

/// View for Settings > Clock
struct ClockView: View {
    @AppStorage("SwipeSwitchWatchFace") private var swipeSwitchWatchFaceEnabled = false
    @AppStorage("ShowDataWhenLocked") private var showDataWhenLocked = true
    @AppStorage("Chimes") private var chimesEnabled = false
    @AppStorage("SpeakTime") private var speakTimeEnabled = true
    @AppStorage("TapticTime") private var tapticTimeEnabled = false
    @AppStorage("TapticTimeDigits") private var selectedTapticTime = "TAPTIC_TIME_ENCODING_DECIMAL_LABEL"
    @AppStorage("WatchFaceNotifications") private var watchFaceNotificationsEnabled = true
    @State private var selected = "TAP_TO_SPEAK_RESPECT_MUTE_LABEL"
    private let options = ["TAP_TO_SPEAK_RESPECT_MUTE_LABEL", "TAP_TO_SPEAK_ALWAYS_LABEL"]
    private var date = Date()
    private let path = "/System/Library/PreferenceBundles/NanoClockSettings.bundle"
    private let speakPath = "/System/Library/PrivateFrameworks/AXTapToSpeakTime.framework"
    private let table = "Localizable-Clock"
    
    var body: some View {
        List {
            Section {
                Toggle("FAST_FACE_SWITCHING_CELL_TITLE".localized(path: path, table: table), isOn: $swipeSwitchWatchFaceEnabled)
            } footer: {
                Text("FACE_FACE_SWITCHING_SECTION_FOOTER".localized(path: path, table: table))
            }
            
            Section {
                Toggle("SHOW_COMPLICATION_DATA_WHEN_LOCKED_CELL_TITLE".localized(path: path, table: table), isOn: $showDataWhenLocked)
            } header: {
                Text("SHOW_COMPLICATION_DATA_WHEN_LOCKED_SECTION_HEADER".localized(path: path, table: table))
            } footer: {
                Text("SHOW_COMPLICATION_DATA_WHEN_LOCKED_SECTION_FOOTER".localized(path: path, table: table))
            }
            
            Section {} footer: {
                Text("TIME_AHEAD_SECTION_TITLE".localized(path: path, table: table))
            }
            
            Section {
                Button {} label: {
                    LabeledContent {
                        Text(date, format: .dateTime
                            .hour(.defaultDigits(amPM: .omitted))
                            .minute(.twoDigits)
                        )
                    } label: {
                        Text("TIME_AHEAD_CELL_FORMAT".localized(path: path, table: table, "0"))
                    }
                }
            } footer: {
                Text("TIME_AHEAD_SECTION_FOOTER".localized(path: path, table: table))
            }
            
            Section {
                Toggle("TAPTIC_CHIMES_TITLE".localized(path: speakPath), isOn: $chimesEnabled)
                NavigationLink(destination: ClockSoundsView()) {
                    RowLabel(
                        title: "TAPTIC_CHIMES_SOUNDS_TITLE".localized(path: speakPath),
                        subtitle: "TAPTIC_CHIMES_SOUND_BELLS_LABEL".localized(path: speakPath)
                    )
                }
            } footer: {
                Text("TAPTIC_CHIMES_ON_THE_HOUR_DESCRIPTION".localized(path: speakPath))
            }
            
            Section {
                Picker(selection: $selected) {
                    if speakTimeEnabled {
                        ForEach(options, id: \.self) { option in
                            Text(option.localized(path: speakPath))
                        }
                    }
                } label: {
                    Toggle("TAP_TO_SPEAK_TITLE".localized(path: speakPath), isOn: $speakTimeEnabled.animation())
                }
                .pickerStyle(.inline)
            } footer: {
                Text("CharacterVoicesDownloadStalledWiFi".localized(
                    path: "/System/Library/PrivateFrameworks/AXCharacterVoices.framework",
                    table: "AXCharacterVoices")
                )
            }
            
            Section {
                NavigationLink(destination: TapticTimeView()) {
                    if tapticTimeEnabled {
                        RowLabel(
                            title: "TAPTIC_TIME_TITLE".localized(path: speakPath),
                            subtitle: selectedTapticTime.localized(path: speakPath)
                        )
                    } else {
                        RowLabel(
                            title: "TAPTIC_TIME_TITLE".localized(path: speakPath),
                            subtitle: "TAPTIC_TIME_DISABLED".localized(path: speakPath)
                        )
                    }
                }
            } footer: {
                if tapticTimeEnabled {
                    Text("TAPTIC_TIME_MUTE_DESCRIPTION".localized(path: speakPath))
                } else {
                    Text("TAPTIC_TIME_DISABLED_DESCRIPTION".localized(path: speakPath))
                }
            }
            
            Section {
                Toggle("FACE_NOTIFICATION_CELL_TITLE".localized(path: path, table: table), isOn: .constant(true))
            } footer: {
                Text("FACE_NOTIFICATION_SECTION_FOOTER".localized(path: path, table: table))
            }
            
            Section {
                Button("MONOGRAM".localized(path: path, table: table)) {}
            } footer: {
                Text("MONOGRAM_SECTION_FOOTER".localized(path: path, table: table)
                )
            }
        }
        .navigationTitle("STATUS_BAR_TITLE_TIME".localized(path: path, table: table))
    }
}

#Preview {
    NavigationStack {
        ClockView()
    }
}
