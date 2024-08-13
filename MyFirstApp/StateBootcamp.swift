//
//  StateBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-11.
//

import SwiftUI

struct StateBootcamp: View {
    @State var myTitle = "My Title"
    @State var count = 0
    var body: some View {
        Text(myTitle + " \(count) times")
            .font(.title)
        Button("Button 1") {
            count += 1
            myTitle = "Button 1 was pressed"
        }
    }
}

#Preview {
    StateBootcamp()
}
