//
//  DatePickerView.swift
//  SwiftBeta-Curso-Swift-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct DatePickerView: View {
    @State var currentDate: Date = Date()
    
    var body: some View {
        Form {
            DatePicker("Fecha",
                       selection: $currentDate)
            Text(currentDate, style: .date)
                .bold()
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
