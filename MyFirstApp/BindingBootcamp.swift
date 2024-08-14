//
//  BindingBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-13.
//

import SwiftUI

struct BindingBootcamp: View {

    @State var backgroundColor = Color.green

    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)

            ButtonView(backgroundColor: $backgroundColor)
        }
    }
}

struct ButtonView: View {

    @Binding var backgroundColor: Color

    var body: some View {
        Button(action: {
            backgroundColor = .orange
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingBootcamp()
}
