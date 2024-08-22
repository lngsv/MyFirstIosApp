//
//  TabViewBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-21.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab = 2

    var body: some View {
        TabView(selection: $selectedTab) {
            Text("HOME TAB")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)

            
            VStack {
                Text("PROFILE TAB")
                Button(action: {
                    selectedTab = 0
                }, label: {
                    Text("GO HOME")
                })
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
            .tag(2)
        }
        .background(.gray.opacity(0.5))
        .tint(.purple)
//        .tabViewStyle(PageTabViewStyle()) 
    }
}

#Preview {
    TabViewBootcamp()
}
