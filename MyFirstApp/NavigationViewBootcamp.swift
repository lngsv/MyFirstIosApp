//
//  NavigationViewBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-14.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        // one NavigationView per app
        NavigationView {
            ScrollView {
                NavigationLink("Hello, world!", destination: Text("Second screen."))

                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .toolbar(.hidden)
//            .navigatioBarIte
            .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {

                    HStack {
                        NavigationLink(destination: Text("Other screen"), label: {
                            Image(systemName: "gear")
                        }).tint(.orange)
                        Image(systemName: "flame.fill")
                    }
                })
                ToolbarItem(placement: .topBarTrailing, content: {
                    NavigationLink(destination: Text("WOW SCREEN"), label: {
                        Image(systemName: "person.fill")
                    }).tint(.red)
                })
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
