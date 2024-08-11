//
//  SwiftUIView.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-10.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            .red,
            ignoresSafeAreaEdges: .bottom // not to ignore top safe area
        )
//        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SafeAreaBootcamp()
}
