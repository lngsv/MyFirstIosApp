//
//  SpacerBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-09.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
                .frame(height:10)
                .background(.orange)
            
            Rectangle()
                .frame(width: 100, height: 100)
            
            Spacer(minLength: nil)
                .frame(height:10)
                .background(.orange)
            
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height:10)
                .background(.orange)
            
        }
    }
}

#Preview {
    SpacerBootcamp()
}
