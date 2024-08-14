//
//  ConditionalBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-13.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var isLoading = true

    var body: some View {
        VStack(spacing: 20) {


            Button("Is loading: \(isLoading.description)") {
                isLoading.toggle()
            }

            if isLoading {
                ProgressView()
            }

            Spacer()

        }
    }
}

#Preview {
    ConditionalBootcamp()
}
