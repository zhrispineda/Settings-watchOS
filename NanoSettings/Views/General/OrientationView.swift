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
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        wristSelection = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: wristSelection == option ? "checkmark" : "")
                                .foregroundColor(.green)
                        }
                    })
                }
            }, header: {
                Text("Wrist")
            })
            
            // Digital Crown
            Section(content: {
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        digitalCrownSelection = option
                    }, label: {
                        HStack {
                            Text(option)
                            Spacer()
                            Image(systemName: digitalCrownSelection == option ? "checkmark" : "")
                                .foregroundColor(.green)
                        }
                    })
                }
            }, header: {
                Text("Digital Crown")
            })
        }
        .navigationTitle("Orientation")
    }
}

#Preview {
    NavigationStack {
        OrientationView()
    }
}
