//
//  ContextMenuBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-17.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack (spacing: 10) {
            Image(systemName: "house.fill")
            Text("Swiftful Thinking")
            Text("How to use Context Menu")
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color.purple.cornerRadius(30))
        .contextMenu(menuItems: {
            Text("Menu Item 1")
            Text("Menu Item 2")
            Label("Menu Item 3", systemImage: "flame.fill")
        })
    }
}

#Preview {
    ContextMenuBootcamp()
}
