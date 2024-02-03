//
//  ChimesScheduleView.swift
//  NanoSettings
//
//  Settings > Accessibility > Chimes > Schedule
//

import SwiftUI

struct ChimesScheduleView: View {
    // Variables
    @State private var scheduleSelection = "Hourly"
    let options = ["Hourly", "30 minutes", "15 minutes"]
    
    var body: some View {
        List {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    scheduleSelection = option
                }, label: {
                    HStack {
                        Text(option)
                        Spacer()
                        Image(systemName: "\(scheduleSelection == option ? "checkmark" : "")")
                            .foregroundStyle(.green)
                    }
                })
            }
        }
        .navigationTitle("Schedule")
    }
}

#Preview {
    NavigationStack {
        ChimesScheduleView()
    }
}
