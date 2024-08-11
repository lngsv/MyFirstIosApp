//
//  TextBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-03.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! ")
            .foregroundColor(Color.pink)
//            .italic()
//            .bold()
//            .underline(false, color: Color.red)
//            .strikethrough()
//            .font(.system(size: 36, design: .serif))
            .multilineTextAlignment(.trailing)
    }
}

#Preview {
    TextBootcamp()
}
