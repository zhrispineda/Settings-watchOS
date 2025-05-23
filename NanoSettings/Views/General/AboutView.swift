//
//  AboutView.swift
//  NanoSettings
//
//  Settings > General > About
//

import SwiftUI

struct AboutView: View {
    @State private var showingModelID = true
    var buildVersion: String {
        return MGHelper.read(key: "mZfUC7qo4pURNhyMHZ62RQ") ?? "Unknown"
    }
    var modelID: String {
        if showingModelID {
            // First key is the model number (example: A2999)
            // Second key is the region code (example: LL/A)
            return (MGHelper.read(key: "97JDvERpVwO+GHtthIh7hA") ?? "Unknown") + (MGHelper.read(key: "zHeENZu+wbg7PUprwNwBWg") ?? "")
        }
        return MGHelper.read(key: "97JDvERpVwO+GHtthIh7hA") ?? "Unknown"
    }
    
    var body: some View {
        List {
            ClearRow(title: "DEVICE_NAME_TITLE".localize(), subtitle: WKInterfaceDevice.current().localizedModel)
            ClearRow(title: "VERSION_TITLE".localize(), subtitle: "\(WKInterfaceDevice.current().systemVersion) (\(buildVersion))")
            ClearRow(title: "MODEL_NAME".localize(), subtitle: WKInterfaceDevice.current().localizedModel)
            
            // Model Row
            VStack(alignment: .leading) {
                Button {
                    withAnimation {
                        showingModelID.toggle()
                    }
                } label: {
                    Text("MODEL_TITLE")
                    Text(modelID)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
            .listRowBackground(Color.clear)
            
            ClearRow(title: "APPLICATIONS_TITLE".localize(), subtitle: "0")
            ClearRow(title: "LEGAL_INFO_TITLE".localize(), subtitle: "LEGAL_INFO_DETAILS".localize())
        }
        .navigationTitle("STATUS_BAR_TITLE_ABOUT")
    }
}

#Preview {
    NavigationStack {
        AboutView()
    }
}
