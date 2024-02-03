//
//  AccessibilityShortcutView.swift
//  NanoSettings
//
//  Settings > Accessibility > Accessibility Shortcut
//

import SwiftUI

struct AccessibilityShortcutView: View {
    // Variables
    @State private var selected = ["Touch Accommodations"]
    let options = ["AssistiveTouch", "Control Nearby Devices", "Hearing Devices", "Increase Contrast", "Left/Right Balance", "Live Speech", "Reduce Motion", "Reduce Transparency", "Touch Accommodations", "VoiceOver", "Zoom"]
    
    var body: some View {
        List {
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        if let index = selected.firstIndex(of: option) {
                            selected.remove(at: index)
                        } else {
                            selected.append(option)
                        }
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: "\(selected.contains(option) ? "checkmark" : "")")
                                .foregroundStyle(.blue)
                        }
                    })
                }
            }, header: {
                Text("Triple-click the Digital Crown for:")
            })
        }
        .navigationTitle("Accessibility Shortcut")
    }
}

#Preview {
    NavigationStack {
        AccessibilityShortcutView()
    }
}
