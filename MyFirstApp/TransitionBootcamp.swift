//
//  TransitionBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-14.
//

import SwiftUI

struct TransitionBootcamp: View {

    @State var showView = false

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }

            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)))
                // opacity and scale doesn't work as others, needs its own animation
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(.move(edge: .bottom))
                //  .transition(.slide)
                    .animation(.easeInOut)
            }

        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
