//
//  SiriSuggestionsDetailView.swift
//  NanoSettings
//
//  Settings > Siri > [App]
//

import SwiftUI

struct SiriSuggestionsDetailView: View {
    // Variables
    var title = String()
    @State private var selected = "Mirror my iPhone"
    let options = ["Mirror my iPhone", "Custom"]
    @State private var showSiriSuggestionsEnabled = true
    
    var body: some View {
        List {
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
            
            if selected == "Custom" {
                Section(content: {
                    Toggle("Show Siri Suggestions in App", isOn: $showSiriSuggestionsEnabled)
                }, header: {
                    Text("In \"\(title)\"")
                }, footer: {
                    Text("Allow Siri to make suggestions in \"\(title)\".")
                })
            }
        }
        .navigationTitle(title)
    }
}

#Preview {
    SiriSuggestionsDetailView()
}
