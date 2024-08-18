//
//  ToggleBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-18.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn = false

    var body: some View {
        Toggle(isOn: $toggleIsOn, label: {
            Text("Label")
        })
        .padding()
        .tint(.purple)
    }
}

#Preview {
    ToggleBootcamp()
}
