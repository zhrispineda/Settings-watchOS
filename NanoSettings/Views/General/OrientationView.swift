//
//  OrientationView.swift
//  NanoSettings
//
//  Settings > General > Orientation
//

import SwiftUI

struct OrientationView: View {
    // Variables
    @State private var wristSelection: String = "Left"
    @State private var digitalCrownSelection: String = "Right"
    let options = ["Left", "Right"]
    
    var body: some View {
        List {
            // Wrist
            Section("Wrist") {
                ForEach(options, id: \.self) { option in
                    Button {
                        wristSelection = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: wristSelection == option ? "checkmark" : "")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
            
            // Digital Crown
            Section("Digital Crown") {
                ForEach(options, id: \.self) { option in
                    Button {
                        digitalCrownSelection = option
                    } label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: digitalCrownSelection == option ? "checkmark" : "")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
        }
        .navigationTitle("Orientation")
    }
}

#Preview {
    NavigationStack {
        OrientationView()
    }
}
