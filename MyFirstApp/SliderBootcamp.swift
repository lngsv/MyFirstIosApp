//
//  SliderBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-21.
//

import SwiftUI

struct SliderBootcamp: View {

    @State var sliderValue = 10.0
    @State var color: Color = .red

    var body: some View {

        Text("Slider value: \(String(format: "%.2f", sliderValue))")
            .foregroundStyle(color)
        //Slider(value: $sliderValue)
//        Slider(value: $sliderValue, in: 0...100)
//        Slider(value: $sliderValue, in: 0...100, step: 1)
        Slider(
            value: $sliderValue,
            in: 0...100,
            step: 1,
            onEditingChanged: { (_) in
                color = .green
            },
            minimumValueLabel: Text("0"),
            maximumValueLabel: Text("100"),
            label: {} // does not show up
        )
            .tint(.purple)
            .padding()
    }
}

#Preview {
    SliderBootcamp()
}
