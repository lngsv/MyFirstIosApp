//
//  PickerBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-18.
//

import SwiftUI

struct PickerBootcamp: View {

    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        UISegmentedControl.appearance().setTitleTextAttributes([
            .foregroundColor: UIColor.white,
        ], for: .selected)
    }

    @State var pickedWheel = ""
    @State var pickedMenu = ""
    @State var pickedPalette = ""

    var body: some View {
        VStack {
            HStack {
                Text("Choose your age:")
                Picker(
                    selection: $pickedWheel,
                    label: Text("Picker"),
                    content: {
                        ForEach(18..<100) {age in
                            Text("\(age)").tag("\(age)")
                        }
                    }
                )
                .pickerStyle(WheelPickerStyle())
            }



            Picker(
                selection: $pickedMenu,
                label: Text("Picker"),
                content: {
                    ForEach(18..<100) {age in
                        Text("\(age)").tag("\(age)")
                    }
                }
            )
            .pickerStyle(MenuPickerStyle())


            Picker(
                selection: $pickedPalette,
                label: Text("Picker"),
                content: {
                    ForEach(18..<20) {age in
                        Text("\(age)").tag("\(age)")
                    }
                }
            )
            .pickerStyle(PalettePickerStyle())




        }.padding()
    }
}

#Preview {
    PickerBootcamp()
}
