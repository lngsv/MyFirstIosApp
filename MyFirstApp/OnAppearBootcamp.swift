//
//  OnAppearBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-21.
//

import SwiftUI

struct OnAppearBootcamp: View {

    @State var myText = "Starting text"
    @State var count = 0

    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
            }

            .navigationTitle("OnAppear \(count)")
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
