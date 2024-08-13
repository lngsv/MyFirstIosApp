//
//  ExtractedFunctionsBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-12.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    var body: some View {
        Color.yellow

        // You can right-click on the curly braces and press "Extract Subview"
        VStack {
            Button("asd"){}.background(.red).foregroundColor(.black)




            // XCode 16 with swift-format will be released in Sep 2024
            Text(       "sdf").background().background().background().background().background().background().background()

        }
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
