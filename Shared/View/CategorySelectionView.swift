//
//  CategorySelectionView.swift
//  Shared
//
//  Created by Robert P on 29.04.2021.
//

import SwiftUI

enum category: String {
    case lenght = "Lenght"
    case weight = "Weight"
    case area = "Area"
    case volume = "Volume"
    case temperature = "Temperature"
    case pressure = "Pressure"
}

struct CategorySelectionView: View {
    
    @StateObject var units = ConverterService()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    NavigationLink(destination: DetailView(category: .weight, units: units.selectUnit(category: .weight))) {
                        Image(systemName: "thermometer")
                        Text("\(category.weight.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .lenght, units: units.selectUnit(category: .lenght))) {
                        Image(systemName: "thermometer")
                        Text("\(category.lenght.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .area, units: units.selectUnit(category: .area))) {
                        Image(systemName: "thermometer")
                        Text("\(category.area.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .volume, units: units.selectUnit(category: .volume))) {
                        Image(systemName: "thermometer")
                        Text("\(category.volume.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .pressure, units: units.selectUnit(category: .pressure))) {
                        Image(systemName: "thermometer")
                        Text("\(category.pressure.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .temperature, units: units.selectUnit(category: .temperature))) {
                        Image(systemName: "thermometer")
                        Text("\(category.temperature.rawValue)")
                    }
                }
            }
            
            .navigationBarTitle("Unit Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySelectionView()
    }
}
