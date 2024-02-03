//
//  FavoritePhrasesView.swift
//  NanoSettings
//
//  Settings > Accessibility > Live Speech > Favorite Phrases
//

import SwiftUI

struct FavoritePhrasesView: View {
    // Variables
    @State private var showingCreatePhrasesSheet = false
    
    var body: some View {
        List {
            Button("Add a phrase", action: { showingCreatePhrasesSheet.toggle() })
                .sheet(isPresented: $showingCreatePhrasesSheet, content: {
                    List {
                        Button("Create a phrase", action: {})
                            .toolbar {
                                ToolbarItem(placement: .topBarTrailing, content: {
                                    Button(action: { showingCreatePhrasesSheet.toggle() }, label: {
                                        Image(systemName: "checkmark")
                                            .foregroundStyle(.blue)
                                    })
                                })
                            }
                    }
                })
        }
        .navigationTitle("Favorite Phrases")
    }
}

#Preview {
    NavigationStack {
        FavoritePhrasesView()
    }
}
