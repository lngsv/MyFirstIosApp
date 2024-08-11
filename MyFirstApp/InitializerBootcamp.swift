//
//  InitializerBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-10.
//

import SwiftUI

struct InitializerBootcamp: View {

    let backgroundColor: Color
    let count: Int
    let title: String

    init(count: Int, fruit: Fruit) {
        self.count = count

        if fruit == .apple {
            self.backgroundColor = .red
            self.title = "Apples"
        } else {
            self.backgroundColor = .orange
            self.title = "Oranges"
        }
    }

    enum Fruit {
        case apple
        case orange
    }

    var body: some View {
        VStack (spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()

            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 100, fruit: .apple)
        InitializerBootcamp(count: 75, fruit: .orange)
    }
}

