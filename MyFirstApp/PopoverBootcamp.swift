//
//  PopoverBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-14.
//

import SwiftUI

struct PopoverBootcamp: View {

    @State var showNewScreen = false

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()

            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })

            // METHOD 2 - SHEET
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring)
//                }
//            }
//            .zIndex(2)

            // METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring)
        }


    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var dismiss
    @Binding var showNewScreen: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.ignoresSafeArea()

            Button(action: {
                showNewScreen.toggle()
                // dismiss.callAsFunction() // for sheets
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .padding()
            })
        }
    }
}

#Preview {
    PopoverBootcamp()
}
