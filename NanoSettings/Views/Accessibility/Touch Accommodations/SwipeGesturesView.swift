//
//  SwipeGesturesView.swift
//  NanoSettings
//
//  Settings > Accessibility > Touch Accommodations > Swipe Gestures
//

import SwiftUI

struct SwipeGesturesView: View {
    // Variables
    @State private var swipeGesturesEnabled = false
    @State private var selected = "4×"
    let movementOptions = ["Standard", "2×", "4×", "6×", "8×"]
    
    var body: some View {
        List {
            Section(content: {
                Toggle("Swipe Gestures", isOn: $swipeGesturesEnabled)
            }, footer: {
                Text("Perform swipe gestures without waiting for the specified duration.")
            })
            
            if swipeGesturesEnabled {
                Section(content: {
                    ForEach(movementOptions, id: \.self) { option in
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
                }, header: {
                    Text("Required Movement")
                }, footer: {
                    Text("Your finger must move a small distance before a swipe gesture begins. Increase the required movement to prevent unintended swipe gestures.")
                })
            }
        }
        .navigationTitle("Swipe Gestures")
    }
}

#Preview {
    SwipeGesturesView()
}
