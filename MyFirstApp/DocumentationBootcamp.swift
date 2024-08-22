//
//  DocumentationBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-21.
//

import SwiftUI

struct DocumentationBootcamp: View {

    // check out minimap

    // MARK: PROPERTIES

    /// Adding a summary to this variable that is accessible with Opt + Click
    @State var variable: Int = 3

    // MARK: BODY

    // foldable (Editor -> Code Folding -> ...)
    /*
        Multiline
         comments
     */

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }

    // MARK: FUNCTIONS
    
    /// Sums two ints
    ///
    /// This is some discussion around this func
    /// ```
    /// adding some usage example
    /// ```
    ///
    /// - Warning: We can also add some warning
    /// - Parameters:
    ///   - lhs: left hand side argument
    ///   - rhs: right-hand side argument
    /// - Returns: the sum of lhs and rgs
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
}

#Preview {
    DocumentationBootcamp()
}
