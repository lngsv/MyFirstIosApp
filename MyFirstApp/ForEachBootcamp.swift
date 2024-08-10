//
//  ForEachBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-10.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle().frame(width: 30, height: 30)
//                    Text("Index is \(index)")
//                }
//            }
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
