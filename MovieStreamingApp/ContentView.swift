//
//  ContentView.swift
//  MovieStreamingApp
//
//  Created by Sarah Talaat Ammar on 13/03/2026.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        Button("Continue") {

        }
        .padding()
        .background(Color.blue)
        .cornerRadius(999)
        .foregroundColor(Color.purple)
        .overlay(
            RoundedRectangle(cornerRadius: 999)
                .stroke(
                    LinearGradient(
                        colors: [.yellow, .red],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 4
                )
        )
    }
    
}




#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
