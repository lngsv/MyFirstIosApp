//
//  IconsBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-05.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill") // see SF symbols app
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
//            .font(.largeTitle)
//            .font(.system(size: 200))
            .foregroundColor(.orange)
            .frame(width: 300, height: 300)
            .clipped()
    }
}

#Preview {
    IconsBootcamp()
}
