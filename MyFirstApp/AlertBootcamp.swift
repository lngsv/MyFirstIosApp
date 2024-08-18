//
//  AlertBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-17.
//

import SwiftUI

struct AlertBootcamp: View {

    @State var showAlert = false
    @State var backgroundColor = Color.yellow

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()

            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                Alert(
                    title: Text("There was an error!"),
                    message: Text("Error description"),
                    primaryButton: .destructive(Text("DELETE")) {
                        backgroundColor = .red
                    },
                    secondaryButton: .cancel()
                )
            })
        }
    }
}

#Preview {
    AlertBootcamp()
}
