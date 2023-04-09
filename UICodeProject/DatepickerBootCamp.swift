//
//  DatepickerBootCamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct DatepickerBootCamp: View {
    @State var date: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Calendar.current.date(from: DateComponents(year: 2004)) ?? Date()
    var body: some View {
        //        DatePicker("Select A Date", selection: $date)
        ////            .foregroundColor(.red)
        ////            .tint(.green)
        //            .accentColor(.pink)
        ////            .colorMultiply(.yellow)
        //            .datePickerStyle(
        ////                CompactDatePickerStyle()
        //                WheelDatePickerStyle()
        //            )
        
        //        DatePicker("Select A Date", selection: $date,
        //                   in: startingDate...endingDate,
        //                   displayedComponents: [.date]
        //        )
        ZStack{
            
        }
    }
}

struct DatepickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DatepickerBootCamp()
    }
}
