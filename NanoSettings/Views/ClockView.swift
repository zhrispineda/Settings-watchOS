//
//  ClockView.swift
//  NanoSettings
//
//  Settings > Clock
//

import SwiftUI

struct ClockView: View {
    // Variables
    @AppStorage("SwipeSwitchWatchFace") private var swipeSwitchWatchFaceEnabled = false
    @AppStorage("Chimes") private var chimesEnabled = false
    @AppStorage("SpeakTime") private var speakTimeEnabled = true
    @AppStorage("WatchFaceNotifications") private var watchFaceNotificationsEnabled = true
    @State private var selected = "Control With Silent Mode"
    let options = ["Control With Silent Mode", "Always Speak"]
    var date = Date()
    var calendar = Calendar.current
    
    var body: some View {
        List {
            Section {
                Toggle("Swipe to Switch Watch Face", isOn: $swipeSwitchWatchFaceEnabled)
            } footer: {
                Text("Switch between your watch faces by swiping left or right from the edge of the screen.")
            }
            
            Section {} footer: {
                Text("Set Watch Face Display Time Ahead")
            }
            
            Section {
                Button {} label: { // TODO: Time selection picker
                    HStack {
                        Text("+0 min")
                        Spacer()
                        Text("\(calendar.component(.hour, from: date)):\(String(format: "%02d", calendar.component(.minute, from: date)))")
                            .foregroundStyle(.secondary)
                    }
                }
            } footer: {
                Text("All alerts and notifications will still come in at the correct time. The only time affected by this is what is shown on your watch faces.")
            }
            
            Section {
                Toggle("Chimes", isOn: $chimesEnabled)
                NavigationLink(destination: ClockSoundsView()) {
                    RowLabel(title: "Sounds", subtitle: "Bells")
                }
            } footer: {
                Text("When this is on, selected sounds and haptics will play on the hour.")
            }
            
            Section {
                Toggle("Speak Time", isOn: $speakTimeEnabled.animation())
                if speakTimeEnabled {
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
                Text("Waiting to download. Mickey and Minnie voices will download wehn your watch is charging and connected to a Wi-Fi network.")
            }
            
            Section {
                NavigationLink(destination: TapticTimeView()) {
                    RowLabel(title: "Taptic Time", subtitle: "Off")
                }
            } footer: {
                Text("When this is on, Apple Watch will tap a haptic version of the time.")
            }
            
            Section {
                Toggle("Watch Face Notifications", isOn: .constant(true))
            } footer: {
                Text("Receive a notification when a new watch face is available for your Apple Watch.")
            }
            
            Section {
                Button("Monogram") {} // TODO: Keyboard input
            } footer: {
                Text("Choose up to five characters to appear in the monogram compilation on the Typograph, Infograph, Meridian, California, and Color watch faces.")
            }
            
//            Section {
//                NavigationLink("Siri Face Data Sources", destination: SiriFaceDataSourcesView())
//            }
        }
        .navigationTitle("Clock")
    }
}

#Preview {
    NavigationStack {
        ClockView()
    }
}
