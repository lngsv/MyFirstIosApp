//
//  AnimationBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-14.
//

import SwiftUI

struct AnimationBootcamp: View {

    @State var isAnimated = false

    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
