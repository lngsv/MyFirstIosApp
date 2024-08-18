//
//  ActionSheetBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-17.
//

import SwiftUI

struct ActionSheetBootcamp: View {

    @State var showActionSheet = false

    var body: some View {
        Button("Click me") {
            showActionSheet.toggle()
        }
//        .actionSheet(isPresented: $showActionSheet) {
//            ActionSheet(
//                title: Text("This is the title"),
//                message: Text("This is a message"),
//                buttons: [
//                    .default(Text("DEFAULT")),
//                    .destructive(Text("DESTRUCTIVE")),
//                    .cancel(),
//                ]
//            )
//        }
        .confirmationDialog(
            "TITLE KEY",
            isPresented: $showActionSheet,
            titleVisibility: .visible
        ) {
            Button("destructive", role: .destructive) {}
        }
    }
}

#Preview {
    ActionSheetBootcamp()
}
