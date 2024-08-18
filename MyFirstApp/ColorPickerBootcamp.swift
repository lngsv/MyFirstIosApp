//
//  ColorPickerBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-18.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()


            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
