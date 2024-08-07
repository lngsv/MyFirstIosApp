//
//  ImageBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-06.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("gopher")
            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFill()
            .background(Color(.red))
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width:200, height: 300)
//            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
    }
}

#Preview {
    ImageBootcamp()
}
