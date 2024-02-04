//
//  SiriView.swift
//  NanoSettings
//
//  Settings > Siri
//

import SwiftUI

struct SiriView: View {
    // Variables
    @State private var pressDigitalCrownEnabled = true
    @State private var showingEnableSiriPrompt = false
    @State private var showingDisableSiriPrompt = false
    @State private var automaticallySendMessagesEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Press Digital Crown", isOn: $pressDigitalCrownEnabled)
                    .alert("Enable Siri", isPresented: $showingEnableSiriPrompt, actions: {
                        Button("Enable Siri", role: .none, action: {})
                        Button("Cancel", role: .cancel, action: { pressDigitalCrownEnabled.toggle() })
                    }, message: {
                        Text("Apple stores transcripts of your interactions with Siri and may review a subset of these transcripts. Siri also sends information like your voice input, Hey Siri setup, contacts and location to Apple to process your request. Data is not associated with your Apple ID.")
                    })
                    .alert("Turn Off Siri", isPresented: $showingDisableSiriPrompt, actions: {
                        Button("Turn Off Siri", role: .destructive, action: {})
                        Button("Cancel", role: .cancel, action: { pressDigitalCrownEnabled.toggle() })
                    }, message: {
                        Text("The information Siri uses to respond to your requests is also used for Dictation and will remain on Apple servers unless Dictation is also turned off.")
                    })
                    .onChange(of: pressDigitalCrownEnabled, ({
                        if !showingEnableSiriPrompt && !showingDisableSiriPrompt {
                            pressDigitalCrownEnabled ? showingEnableSiriPrompt.toggle() : showingDisableSiriPrompt.toggle()
                        }
                    }))
                NavigationLink("Siri History", destination: SiriHistoryView())
            }, header: {
                Text("Ask Siri")
            }, footer: {
                Text(pressDigitalCrownEnabled ? "Support for processing voice input on this Apple Watch will download later when connected to Wi-Fi." : "")
            })
            
            if pressDigitalCrownEnabled {
                Section {
                    NavigationLink(destination: LanguageView(), label: {
                        VStack(alignment: .leading) {
                            Text("Language")
                            Text("English (United States)")
                                .foregroundStyle(.secondary)
                        }
                    })
                }
                
                Section(content: {
                    NavigationLink("Siri Responses", destination: SiriResponsesView())
                }, footer: {
                    Text("Control how Siri speaks and displays responses.")
                })
                
                Section {
                    Toggle("Automatically Send Messages", isOn: $automaticallySendMessagesEnabled)
                }
                
                Section(content: {
                    NavigationLink("Use with Siri", destination: {
                        List {
                            Section(content: {}, footer: {
                                Text("Apps you use with Siri may send information like your contacts and other data to Apple to process your requests.")
                            })
                        }
                        .navigationTitle("Use with Siri")
                    })
                }, footer: {
                    Text("Select which apps to use with Siri.")
                })
            }
            
            Section(content: {
                NavigationLink(destination: SiriSuggestionsDetailView(title: "Maps"), label: {
                    IconLabel(title: "Maps", icon: "applemaps")
                })
            }, header: {
                Text("Siri Suggestions")
            })
        }
        .navigationTitle("Siri")
    }
}

#Preview {
    NavigationStack {
        SiriView()
    }
}
