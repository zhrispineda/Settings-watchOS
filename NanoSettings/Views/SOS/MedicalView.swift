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
            Button {} label: {
                VStack {
                    Image(systemName: "staroflife.circle.fill")
                        .foregroundStyle(.red, .white)
                        .font(.title)
                        .frame(maxWidth: .infinity)
                    Text("**Set Up Your Medical ID**")
                    Text("In an emergency, first responders can look at your Medical ID to get life-saving information.")
                        .multilineTextAlignment(.center)
                }
            }
            .listRowBackground(Color.clear)
            Button {} label: {
                Text("Set Up")
                    .frame(maxWidth: .infinity)
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Text("\(Image(systemName: "staroflife.fill")) Medical ID")
                    .foregroundStyle(.red)
            }
        }
    }
}

#Preview {
    NavigationStack {
        MedicalView()
    }
}
