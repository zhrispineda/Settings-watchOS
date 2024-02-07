//
//  ClockView.swift
//  NanoSettings
//
//  Settings > Clock
//

import SwiftUI

struct ClockView: View {
    // Variables
    @State private var swipeSwitchWatchFaceEnabled = false
    @State private var chimesEnabled = false
    @State private var speakTimeEnabled = true
    @State private var watchFaceNotificationsEnabled = true
    @State private var selected = "Control With Silent Mode"
    let options = ["Control With Silent Mode", "Always Speak"]
    var date = Date()
    var calendar = Calendar.current
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Swipe to Switch Watch Face", isOn: $swipeSwitchWatchFaceEnabled)
            }, footer: {
                Text("Switch between your watch faces by swiping left or right from the edge of the screen.")
            })
            
            Section(content: {}, footer: {
                Text("Set Watch Face Display Time Ahead")
            })
            
            Section(content: {
                Button(action: {}, label: { // TODO: Time selection picker
                    HStack {
                        Text("+0 min")
                        Spacer()
                        Text("\(calendar.component(.hour, from: date)):\(calendar.component(.minute, from: date))")
                            .foregroundStyle(.secondary)
                    }
                })
            }, footer: {
                Text("All alerts and notifications will still come in at the correct time. The only time affected by this is what is shown on your watch faces.")
            })
            
            Section(content: {
                Toggle("Chimes", isOn: $chimesEnabled)
                NavigationLink(destination: ClockSoundsView(), label: {
                    RowLabel(title: "Sounds", subtitle: "Bells")
                })
            }, footer: {
                Text("When this is on, selected sounds and haptics will play on the hour.")
            })
            
            Section(content: {
                Toggle("Speak Time", isOn: $speakTimeEnabled.animation())
                if speakTimeEnabled {
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
            }, footer: {
                Text("Waiting to download. Mickey and Minnie voices will download wehn your watch is charging and connected to a Wi-Fi network.")
            })
            
            Section(content: {
                NavigationLink(destination: TapticTimeView(), label: {
                    RowLabel(title: "Taptic Time", subtitle: "Off")
                })
            }, footer: {
                Text("When this is on, Apple Watch will tap a haptic version of the time.")
            })
            
            Section(content: {
                Toggle("Watch Face Notifications", isOn: $watchFaceNotificationsEnabled)
            }, footer: {
                Text("Receive a notification when a new watch face is available for your Apple Watch.")
            })
            
            Section(content: {
                Button("Monogram", action: {}) // TODO: Keyboard input
            }, footer: {
                Text("Choose up to five characters to appear in the monogram compilation on the Typograph, Infograph, Meridian, California, and Color watch faces.")
            })
            
            Section {
                NavigationLink("Siri Face Data Sources", destination: SiriFaceDataSourcesView())
            }
        }
        .navigationTitle("Clock")
    }
}

#Preview {
    NavigationStack {
        ClockView()
    }
}
