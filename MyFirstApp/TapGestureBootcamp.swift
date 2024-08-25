//
//  TapGestureBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-21.
//

import SwiftUI

struct TapGestureBootcamp: View {

    @State var isSelected = false

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundStyle(isSelected ? .green : .red)


            // This doesn't have a click animation (in contrary to buttons)
            Text("Button")
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })

            Spacer()
        }
        .padding()
    }
}

#Preview {
    TapGestureBootcamp()
}
