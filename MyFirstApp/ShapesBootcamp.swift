//
//  ShapesBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-03.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
        //Ellipse()
//        Capsule()
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
            .trim(from: 0.0, to: 0.75)
            .fill(Color.pink)
        //            .stroke(Color.pink, lineWidth: 30)
            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [40]))
            .frame(width: 300, height: 600)
            
    }
}

#Preview {
    ShapesBootcamp()
}
