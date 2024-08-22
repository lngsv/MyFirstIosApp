//
//  StepperBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-21.
//

import SwiftUI

struct StepperBootcamp: View {

    @State var stepperValue = 10
    @State var widthIncrement = 0.0

    var body: some View {
        Stepper("Stepper: \(stepperValue)", value: $stepperValue)
            .padding()

        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .frame(width: 100 + widthIncrement, height: 100)

        Stepper("Stepper 2") {
            withAnimation(.easeInOut) {widthIncrement += 10}
        } onDecrement: {
            widthIncrement -= 10
        }
    }
}

#Preview {
    StepperBootcamp()
}
