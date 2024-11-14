//
//  ContactsView.swift
//  NanoSettings
//
//  Settings > Contacts
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        List {
            NavigationLink("My Info") {
                List {
                    Text("**No Contacts**")
                        .frame(maxWidth: .infinity)
                        .listRowBackground(Color.clear)
                }
                .navigationTitle("Select My Info")
            }
        }
        .navigationTitle("Contacts")
    }
}

#Preview {
    NavigationStack {
        ContactsView()
    }
}
