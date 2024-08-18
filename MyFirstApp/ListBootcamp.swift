//
//  ListBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-17.
//

import SwiftUI

struct IdentifiableItem: Identifiable {
    let value: String
    let id = UUID()
}




struct ListBootcamp: View {

    @State private var fruits = [ 
        "Apple", "Orange", "Banana", "Pineapple",
    ].map({IdentifiableItem(value: $0)})
    @State private var veggies = [ 
        "Cucumber", "Carrot", "Potato", "Tomato",
    ].map({IdentifiableItem(value: $0)})

    var body: some View {

        NavigationStack {
            List {
                Section(header: Text("Fruits 🍍")) {
                    ForEach(fruits) { fruit in
                        Text(fruit.value)
                    }
                    // doesn't work in the simulator
                    .onMove(perform: { indices, newOffset in
                        fruits.move(fromOffsets: indices, toOffset: newOffset)
                    })
                    .onDelete(perform: { indexSet in
                        fruits.remove(atOffsets: indexSet)
                    })

                }

                Section(header: HStack {
                    Text("Vegetables 🥦").font(.largeTitle)
                }) {
                    ForEach(veggies) { veggie in
                        Text(veggie.value)
                    }
                    // doesn't work in the simulator
                    .onMove(perform: { indices, newOffset in
                        veggies.move(fromOffsets: indices, toOffset: newOffset)
                    })
                    .onDelete(perform: { indexSet in
                        veggies.remove(atOffsets: indexSet)
                    })

                }
            }
            // TODO: there are no animations because of this "id"
            //   but without id the moves are very slow
            .id(UUID())
            .listStyle(InsetListStyle())
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {
                    EditButton()
                })
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button("Add Coconut") {
                        fruits.append(IdentifiableItem(value: "Coconut"))
                    }
                })
            }
        }
    }
}

#Preview {
    ListBootcamp()
}

//struct BuggyListBootcamp: View {
//
//    @State private var fruits = [ "1", "2", "3", "4" ]
//    @State private var veggies = [ "1", "2", "3", "4" ]
//
//    var body: some View {
//
//        NavigationView {
//            List {
//                Section(header: Text("Fruits 🍍")) {
//                    ForEach(fruits, id: \.self) { fruit in
//                        Text(fruit)
//                    }
//                    // doesn't work in the simulator
//                    .onMove(perform: { indices, newOffset in
////                        print("BEFORE MOVE")
//                        fruits.move(fromOffsets: indices, toOffset: newOffset)
////                        print("AFTER MOVE")
//                    })
//                    .onDelete(perform: { indexSet in
//                        fruits.remove(atOffsets: indexSet)
//                    })
//
//                }
//
//                Section(header: HStack {
//                    Text("Vegetables 🥦").font(.largeTitle)
//                }) {
//                    ForEach(veggies, id: \.self) { veggie in
//                        Text(veggie)
//                    }
//                    // doesn't work in the simulator
//                    // TODO: move is slow
//                    .onMove(perform: { indices, newOffset in
//                        veggies.move(fromOffsets: indices, toOffset: newOffset)
//                    })
//                    .onDelete(perform: { indexSet in
//                        veggies.remove(atOffsets: indexSet)
//                    })
//
//                }
//
//
//    //            VStack {
//    //                HStack {
//    //                    Image(systemName: "person.fill")
//    //                    Spacer()
//    //                    Text("blabal")
//    //                }
//    //                HStack {
//    //                    Spacer()
//    //                    Text("My")
//    //                    Spacer()
//    //                }
//    //            }
//            }
//            .listStyle(InsetListStyle())
//            .navigationTitle("Grocery List")
//            .toolbar {
//                ToolbarItem(placement: .topBarLeading, content: {
//                    EditButton()
//                })
//                ToolbarItem(placement: .topBarTrailing, content: {
//                    Button("Add Coconut") {
//                        fruits.append("Coconut")
//                    }
//                })
//            }
//        }
//    }
//}
