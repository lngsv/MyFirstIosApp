//
//  ScrollViewBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-10.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.orange)
                        .frame(height: 300)
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
