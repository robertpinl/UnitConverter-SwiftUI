//
//  DetailView.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert P on 11.05.2021.
//

import SwiftUI

struct DetailView: View {
    
    var category: category
    
    var units: [Unit]
    
    @State var firstUnit = 0
    @State private var firstUnitValue = ""
    
    @State var secondUnit = 0
    @State private var secondUnitValue = ""
    
    @StateObject var converter = ConverterService()
    
    var body: some View {
        Form {
            Section {
                Picker("Select Unit", selection: $firstUnit) {
                    ForEach(0 ..< units.count, id: \.self) { Text("\(units[$0].symbol)") }
                }
                TextField("Value", text: $firstUnitValue)
                    .keyboardType(.decimalPad)
            }
            Section {
                Picker("Select Unit", selection: $secondUnit) {
                    ForEach(0 ..< units.count, id: \.self) { Text("\(units[$0].symbol)") }
                }
                Text("\(converter.convert(category: category, value: firstUnitValue, unit1: units[firstUnit], unit2: units[secondUnit]), specifier: "%g")")
            }
        }
        .navigationTitle(category.rawValue)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(category: .area, units: [UnitLength.millimeters, UnitLength.centimeters, UnitLength.decimeters, UnitLength.meters])
    }
}
