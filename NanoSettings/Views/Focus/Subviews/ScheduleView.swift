//
//  ScheduleView.swift
//  NanoSettings
//
//  Settings > Focus > [Schedule]
//  Settings > Focus > Add new...
//

import SwiftUI

struct ScheduleView: View {
    // Variables
    @State private var showingDeleteAlert = false
    @State var fromTime = "12:00 AM"
    @State var toTime = "12:00 AM"
    @State var scheduleEnabled = false
    @State private var selected = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var body: some View {
        List {
            Section {
                Button(action: {
                    // TODO: Clock-styled time picker
                    
                }, label: {
                    VStack(alignment: .leading) {
                        Text("From")
                        Text(fromTime)
                            .foregroundStyle(.secondary)
                    }
                })
                Button(action: {
                    // TODO: Clock-styled time picker
                    
                }, label: {
                    VStack(alignment: .leading) {
                        Text("To")
                        Text(toTime)
                            .foregroundStyle(.secondary)
                    }
                })
            }
            
            Section(content: {
                ForEach(days, id: \.self) { day in
                    Button(action: {
                        if let index = selected.firstIndex(of: day) {
                            selected.remove(at: index)
                        } else {
                            selected.append(day)
                        }
                    }, label: {
                        HStack {
                            Text(day)
                            Spacer()
                            Image(systemName: "\(selected.contains(day) ? "checkmark" : "")")
                                .foregroundStyle(.green)
                        }
                    })
                }
            }, header: {
                Text("Repeat")
            })
            
            Section {
                Toggle("Enabled", isOn: $scheduleEnabled)
            }
            
            Section {
                Button("Delete", action: { showingDeleteAlert.toggle() })
                    .foregroundStyle(.red)
                    .frame(maxWidth: .infinity)
                    .alert("", isPresented: $showingDeleteAlert, actions: {
                        Button("Cancel", role: .none, action: {})
                        Button("Delete", role: .none, action: {})
                    }, message: {
                        Text("Are you sure you want to delete this schedule?")
                    })
            }
        }
        .navigationTitle("Schedule")
    }
}

#Preview {
    NavigationStack {
        ScheduleView()
    }
}
