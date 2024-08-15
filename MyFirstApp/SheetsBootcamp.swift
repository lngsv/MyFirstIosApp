//
//  SheetsBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-14.
//

import SwiftUI

struct SheetsBootcamp: View {

    @State var showSheet = false

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10.0))
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet, content: {
//                // dont add multiple sheets
//                // dont add if-else to show different sheets
//                SecondScreen()
//            }) // dragable
        }
    }
}

struct SecondScreen: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()

            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

#Preview {
    SheetsBootcamp()
}
