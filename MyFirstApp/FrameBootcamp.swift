//
//  FrameBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-06.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.green)
//            .frame(width: 200, height: 200, alignment: .bottomTrailing)
//            .frame(maxWidth: .infinity, alignment: .center)
//            .background(.red)
            .frame(height: 100)
            .background(.orange)
            .frame(width: 200)
            .background(.blue)
            .frame(height: 300)
            .background(.purple)
            .frame(width: 400)
            .background(.pink)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .background(.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
