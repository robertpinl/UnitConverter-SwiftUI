//
//  DetailView.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert Pinl on 11.05.2021.
//

import SwiftUI

struct DetailView: View {
    
    var category: category
    var info: String
    var units: [Unit]
    
    @State var firstUnit = 0
    @State private var firstUnitValue = ""
    
    @State var secondUnit = 1
    @State private var secondUnitValue = ""
    
    @StateObject var converter = ConverterService()
    
    var body: some View {
        Form {
            Section {
                Text("Select units")
                    .font(.headline)
                Picker("Convert", selection: $firstUnit) {
                    ForEach(0 ..< units.count, id: \.self) { Text("\(units[$0].symbol)") }
                }
                Picker("To", selection: $secondUnit) {
                    ForEach(0 ..< units.count, id: \.self) { Text("\(units[$0].symbol)") }
                }
            }
            
            Section {
                Text("Value")
                    .font(.headline)
                TextField("Enter", text: $firstUnitValue)
                    .keyboardType(.decimalPad)
            }
            Section {
                Text("Result")
                    .font(.headline)
                Text("\(converter.convert(category: category, value: firstUnitValue, unit1: units[firstUnit], unit2: units[secondUnit]), specifier: "%g")")
            }
        }
        .navigationTitle(category.rawValue)
        .navigationBarItems(trailing: Button(action: {
            hideKeyboard()
        }, label: {
            Image(systemName: "keyboard.chevron.compact.down")
        }))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(category: .temperature, info: "", units: [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin])
    }
}
