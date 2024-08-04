//
//  ColorsBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-03.
//

import SwiftUI

struct ColorsBootcamp: View {
    var color = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//            .fill(Color.primary)
//            .fill(Color(color))
//            .fill(Color(UIColor.secondarySystemBackground))
            .fill(Color("CustomColor"))
            .frame(width: 300, height: 400)
            .shadow(color: Color.primary, radius: 10, x: -20, y: -20)
    }
}



#Preview {
    ColorsBootcamp()
}
