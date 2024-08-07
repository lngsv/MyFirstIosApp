//
//  GradientsBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-05.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    center: .topLeading,
//                    startRadius: 5, endRadius: 400)
                AngularGradient.init(
                    gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/,
                    center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                    angle: /*@START_MENU_TOKEN@*/.degrees(90)/*@END_MENU_TOKEN@*/)
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
