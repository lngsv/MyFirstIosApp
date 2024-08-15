//
//  AnimationTimingBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-14.
//

import SwiftUI

struct AnimationTimingBootcamp: View {

    @State var isAnimated = false
    let timing = 10.0

    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            }
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimated ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.linear(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimated ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimated ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(
//                    width: isAnimated ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.easeOut(duration: timing))

            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimated ? 350 : 50,
                    height: 100
                )
                .animation(Animation.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1
                ))

            // for more details google animation curves
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
