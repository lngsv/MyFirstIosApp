//
//  StacksBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-06.
//

import SwiftUI

struct StacksBootcamp: View {
    // ZStack -> zIndex (back to front)
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .fill(.red)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(.yellow)
                .frame(width: 125, height: 125)
            Rectangle()
                .fill(.green)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    StacksBootcamp()
}
