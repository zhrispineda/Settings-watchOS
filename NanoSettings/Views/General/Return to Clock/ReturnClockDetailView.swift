//
//  ReturnClockDetailView.swift
//  NanoSettings
//
//  Settings > General > Return to Clock > [App]
//

import SwiftUI

struct ReturnClockDetailView: View {
    // Variables
    var title = String()
    let returnClockOptions = ["Default", "Custom"]
    let whenNotInSessionOptions = ["Always", "After 2 minutes", "After 1 hour"]
    @State private var selectedReturnClockOption = "Default"
    @State private var selectedNotInSessionOption = "Always"
    @State private var returnToAppEnabled = false
    let sessionsApps = ["Maps", "Now Playing", "Siren"]
    
    var body: some View {
        List {
            Section(content: {
                ForEach(returnClockOptions, id: \.self) { option in
                    Button(action: {
                        selectedReturnClockOption = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selectedReturnClockOption == option ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }, header: {
                Text("Return to Clock")
            }, footer: {
                Text("Apple Watch will return to the Clock face on wrist down.")
            })
            
            if selectedReturnClockOption == "Custom" {
                Section(content: {
                    ForEach(whenNotInSessionOptions, id: \.self) { option in
                        Button(action: {
                            selectedNotInSessionOption = option
                        }, label: {
                            HStack {
                                Text(option)
                                Spacer()
                                Image(systemName: "\(selectedNotInSessionOption == option ? "checkmark" : "")")
                                    .foregroundStyle(.green)
                            }
                        })
                    }
                }, header: {
                    Text("When not in Session")
                })
            }
            
            if sessionsApps.contains(title) {
                Section(content: {
                    Toggle("Return to App", isOn: $returnToAppEnabled)
                }, header: {
                    Text("When in Session")
                }, footer: {
                    Text("Apple Watch can return to this app for as long as a session is active. A session is considered anything with a defined start and stop such as a workout, audio recording, or timer. To return to the Clock face, end the active session.")
                })
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    NavigationStack {
        ReturnClockDetailView(title: "Maps")
    }
}
