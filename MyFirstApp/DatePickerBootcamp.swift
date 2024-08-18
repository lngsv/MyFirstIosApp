//
//  DatePickerBootcamp.swift
//  MyFirstApp
//
//  Created by Alan Gasiev on 2024-08-18.
//

import SwiftUI

struct DatePickerBootcamp: View {

    @State var pickedDate: Date = .now
    let from: Date = Calendar.current.date(from: DateComponents(year:2020)) ?? Date()
    let to: Date = Date()

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }

    var body: some View {
        Text("Selected date is:")
//        Text(pickedDate.description)
        Text(dateFormatter.string(from: pickedDate))

        DatePicker("Select a date:",
                   selection: $pickedDate,
                   in: from...to,
                   displayedComponents: [.date]
        )
            .padding()
            .datePickerStyle(
                CompactDatePickerStyle()
//                WheelDatePickerStyle()
//                GraphicalDatePickerStyle()
            )
    }
}

#Preview {
    DatePickerBootcamp()
}
