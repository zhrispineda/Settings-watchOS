//
//  HealthView.swift
//  NanoSettings
//
//  Settings > Health
//

import SwiftUI

struct HealthView: View {
    var body: some View {
        List {
            Section {
                NavigationLink(destination: {
                    List {
                        
                    }
                    .navigationTitle("Data")
                }, label: {
                    RowLabel(title: "Health Data", subtitle: "0 categories")
                })
            }
            
            Section(content: {
                NavigationLink(destination: HealthDetailsView(), label: {
                    Label("Health Details", systemImage: "person.crop.circle")
                })
                NavigationLink(destination: MedicalView(), label: {
                    Label("Medical ID", systemImage: "staroflife.fill")
                })
            }, header: {
                Text("Features")
            })
            
            Section(content: {
                Button(action: {}, label: {
                    RowLabel(title: "Apps and Services", subtitle: "0 Active")
                })
                NavigationLink(destination: DevicesView(), label: {
                    RowLabel(title: "Devices", subtitle: "1 active")
                })
            }, header: {
                Text("Sources")
            })
        }
        .navigationTitle("Health")
    }
}

#Preview {
    NavigationStack {
        HealthView()
    }
}
