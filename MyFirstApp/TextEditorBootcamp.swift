//
//  TextEditorBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-18.
//

import SwiftUI

struct TextEditorBootcamp: View {

    @State var textEditorText = "This is the starting text"
    @State var savedText = ""

    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundStyle(.black)
                    .colorMultiply(.gray.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })

                Text(savedText)

                Spacer()
            }
            .padding()
//            .background(.green)
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
