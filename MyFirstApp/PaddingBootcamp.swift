//
//  PaddingAndSpacerBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-09.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.yellow)
//            .padding()
            .padding(.horizontal, 10)
            .padding(.leading, 20)
            .background(.orange)
    }
}

#Preview {
    PaddingBootcamp()
}
