//
//  DarkModeBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-21.
//

import SwiftUI

struct DarkModeBootcamp: View {

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Spacer()
                    Text("This is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This is BLACK")
                        .foregroundStyle(.black)
                    Text("This is WHITE")
                        .foregroundStyle(.white)
                    Text("This is GLOBALLY ADAPTIVE")
                        .foregroundStyle(Color("CustomColor"))
                    Text("This is LOCALLY ADAPTIVE")
                        .foregroundStyle(colorScheme == .light ? .purple : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }

    }
}

#Preview {
        DarkModeBootcamp()
}
