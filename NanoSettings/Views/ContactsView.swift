//
//  ContactsView.swift
//  NanoSettings
//

import SwiftUI

/// View for Settings > Contacts
struct ContactsView: View {
    private let path = "/System/Library/PreferenceBundles/NanoContactsSettings.bundle"
    private let table = "Contacts"
    
    var body: some View {
        List {
            NavigationLink("MY_INFO".localized(path: path, table: table)) {
                List {
                    Text("NO_CONTACTS".localized(path: "/System/Library/PrivateFrameworks/NanoContactsUI.framework"))
                        .bold()
                        .frame(maxWidth: .infinity)
                        .listRowBackground(Color.clear)
                }
                .navigationTitle("PICK_MY_INFO".localized(path: path, table: table))
            }
        }
        .navigationTitle(.contacts)
    }
}

#Preview {
    NavigationStack {
        ContactsView()
    }
}
