//
//  SiriResponsesView.swift
//  NanoSettings
//
//  Settings > Siri > Siri Responses
//

import SwiftUI

struct SiriResponsesView: View {
    // Variables
    @State private var alwaysShowCaptionsEnabled = false
    @State private var alwaysShowSpeechEnabled = true
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Always Show Siri Captions", isOn: $alwaysShowCaptionsEnabled)
            }, footer: {
                Text("Show what Siri says on screen.")
            })
            
            Section(content: {
                Toggle("Always Show Speech", isOn: $alwaysShowSpeechEnabled)
            }, footer: {
                Text("Show a transcription of your speech on screen.")
            })
        }
        .navigationTitle("Siri Responses")
    }
}

#Preview {
    SiriResponsesView()
}
