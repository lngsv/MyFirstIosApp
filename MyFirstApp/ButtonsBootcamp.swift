//
//  ButtonsBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-10.
//

import SwiftUI

struct ButtonsBootcamp: View {

    @State var title: String = "This is my title"

    var body: some View {
        VStack(spacing: 20) {
            Text(title)

            Button("Press me") {
                self.title = "Button #1 was pressed"
            }
            .accentColor(.red)

            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })

            Button(action: {
                self.title = "Button #3 was pressed"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    )
            })

            Button(action: {
                self.title = "Button #4 was pressed"
            }, label: {
                Text("Finish")
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2)
                    )
            })
        }
    }
}


#Preview {
    ButtonsBootcamp()
}
