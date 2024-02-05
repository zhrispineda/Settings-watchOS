//
//  MedicalView.swift
//  NanoSettings
//
//  Settings > SOS > Medical
//

import SwiftUI

struct MedicalView: View {
    var body: some View {
        List {
            Button(action: {}, label: {
                VStack {
                    Image(systemName: "staroflife.circle.fill")
                        .foregroundStyle(.red, .white)
                        .font(.title)
                        .frame(maxWidth: .infinity)
                    Text("**Set Up Your Medical ID**")
                    Text("In an emergency, first responders can look at your Medical ID to get life-saving information.")
                        .multilineTextAlignment(.center)
                }
            })
            .listRowBackground(Color.clear)
            Button(action: {}, label :{
                Text("Set Up")
                    .frame(maxWidth: .infinity)
            })
            .cornerRadius(50.0)
        }
        .navigationTitle("Medical ID")
    }
}

#Preview {
    NavigationStack {
        MedicalView()
    }
}
