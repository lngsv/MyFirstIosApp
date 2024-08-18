//
//  TextFieldBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-18.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText = ""
    @State var dataArr: [String] = []

    var body: some View {
        NavigationStack {
            VStack {
                // See also: onChange and onCommit 
                TextField("Type something here... ", text: $textFieldText)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundStyle(.red)
                .font(.headline)

                Button(action: {
                    dataArr.append(textFieldText)
                    textFieldText = ""
                }, label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? .blue : .gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())

                ForEach(dataArr, id: \.self) {data in
                    Text(data)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }


    }

    func textIsAppropriate() -> Bool {
        return !textFieldText.isEmpty && !dataArr.contains(textFieldText)
    }
}

#Preview {
    TextFieldBootcamp()
}
