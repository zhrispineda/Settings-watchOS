//
//  AccessibilityView.swift
//  NanoSettings
//
//  Settings > Accessibility
//

import SwiftUI

struct AccessibilityView: View {
    // Variables
    @State private var onOffLabelsEnabled = false
    @State private var grayscaleEnabled = false
    @State private var reduceTransparencyEnabled = false
    @State private var increaseContrastEnabled = false
    @State private var boldTextEnabled = false
    @State private var showingConnectedDeviceSheet = false
    @State private var autoSelectEnabled = true
    @State private var monoAudioEnabled = false
    @State private var balance = 3.0
    @State private var headphoneNotificationsEnabled = false
    @State private var showAudioTranscriptionsEnabled = false
    @State private var tapticTimeSpeed = 2.0
    
    var body: some View {
        List {
            Section(content: {
                Toggle("On/Off Labels", isOn: $onOffLabelsEnabled)
                Toggle("Grayscale", isOn: $grayscaleEnabled)
                Toggle("Reduce Transparency", isOn: $reduceTransparencyEnabled)
            }, header: {
                Text("Vision")
            }, footer: {
                Text("Improve contrast by reducing transparency and blurs on some backgrounds to increase legibility.")
            })
            
            Section(content: {
                Toggle("Increase Contrast", isOn: $increaseContrastEnabled)
            }, footer: {
                Text("Increase color contrast between app foreground and background colors.")
            })
            
            Section {
                NavigationLink("Text Size", destination: TextSizeView())
                Toggle("Bold Text", isOn: $boldTextEnabled)
            }
            
            Section(content: {
                NavigationLink(destination: ReduceMotionView(), label: {
                    RowLabel(title: "Reduce Motion", subtitle: "Off")
                })
            }, footer: {
                Text("Limits animation of the user interface.")
            })
            
            Section {
                NavigationLink("Chimes", destination: ChimesView())
            }
            
            Section(content: {
                NavigationLink(destination: QuickActionsView(), label: {
                    RowLabel(title: "Quick Action", subtitle: "Off")
                })
                NavigationLink(destination: TouchAccommodationsView(), label: {
                    RowLabel(title: "Touch Accommodations", subtitle: "Off")
                })
                Button("Control Nearby Devices", action: { showingConnectedDeviceSheet.toggle() })
                    .sheet(isPresented: $showingConnectedDeviceSheet, content: {
                        List {
                            Section(content: {
                                Button(action: {}, label: {
                                    Text("Searching...")
                                })
                            }, header: {
                                Text("NEARBY DEVICES")
                            }, footer: {
                                Text("Control Nearby Devices allows control of nearby connected devices from your Apple Watch.")
                            })
                        }
                    })
            }, header: {
                Text("Motor")
            })
            
            Section(content: {}, header: {
                Text("Wheelchair Activity")
            }, footer: {
                Text("To enable health and fitness features designed for wheel-chair activity, edit the wheel-chair preference in the Health section of My Watch.")
            })
            
            Section(content: {
                Toggle("Auto-Select Focused App", isOn: $autoSelectEnabled)
            }, header: {
                Text("App Switcher")
            }, footer: {
                Text("After 1 second of inactivity the App Switcher can automatically open the focused app.")
            })
            
            Section {
                NavigationLink("Siri", destination: AccessibilitySiriView())
            }
            
            Section(content: {
                Toggle("Mono Audio", isOn: $monoAudioEnabled)
                Slider(
                    value: $balance,
                    in: 0...6,
                    step: 1
                ) {
                    Text("Channel Balance")
                } minimumValueLabel: {
                    Text("L")
                        .foregroundStyle(.secondary)
                } maximumValueLabel: {
                    Text("R")
                        .foregroundStyle(.secondary)
                }
                .tint(.green)
                .background(Color(.black).opacity(0.9))
                .cornerRadius(15.0)
                .padding(.horizontal, -10)
            }, header: {
                Text("Hearing")
            }, footer: {
                Text("Adjust the audio volume balance between left and right channels.")
            })
            
            Section(content: {
                Toggle("Headphone Notifications", isOn: $headphoneNotificationsEnabled)
            }, footer: {
                Text("To protect your hearing, Apple Watch sends a notification if you've been listening to loud headphone audio for long enough to affect your hearing.")
            })
            
            Section(content: {
                Toggle("Show Audio Transcriptions", isOn: $showAudioTranscriptionsEnabled)
            }, footer: {
                Text("Show audio transcriptions for announcements from HomePod.")
            })
            
            Section(content: {
                Slider(
                    value: $tapticTimeSpeed,
                    in: 0...6,
                    step: 1
                ) {
                    Text("Channel Balance")
                } minimumValueLabel: {
                    Image(systemName: "tortoise.fill")
                } maximumValueLabel: {
                    Image(systemName: "hare.fill")
                }
                .tint(.green)
                .background(Color(.black).opacity(0.9))
                .cornerRadius(15.0)
                .padding(.horizontal, -10)
            }, header: {
                Text("Taptic Time Speed")
            })
            
            Section(content: {
                NavigationLink(destination: LiveSpeechView(), label: {
                    RowLabel(title: "Live Speech", subtitle: "Off")
                })
            }, header: {
                Text("Speech")
            })
            
            Section(content: {
                NavigationLink(destination: AccessibilityShortcutView(), label: {
                    RowLabel(title: "Accessibility Shortcut", subtitle: "Touch Accommodations")
                })
            }, header: {
                Text("Other")
            })
        }
        .navigationTitle("Accessibility")
    }
}

#Preview {
    NavigationStack {
        AccessibilityView()
    }
}
