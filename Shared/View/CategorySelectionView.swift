//
//  CategorySelectionView.swift
//  Shared
//
//  Created by Robert Pinl on 29.04.2021.
//

import SwiftUI

struct CategorySelectionView: View {
    
    @StateObject var converter = ConverterService()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    NavigationLink(destination: DetailView(category: .mass, info: converter.getInfo(categoty: .mass), units: converter.selectUnit(category: .mass))) {
                        Image(systemName: "case")
                        Text("\(category.mass.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .lenght, info: converter.getInfo(categoty: .lenght), units: converter.selectUnit(category: .lenght))) {
                        Image(systemName: "ruler")
                        Text("\(category.lenght.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .area, info: converter.getInfo(categoty: .area), units: converter.selectUnit(category: .area))) {
                        Image(systemName: "map")
                        Text("\(category.area.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .volume, info: converter.getInfo(categoty: .volume), units: converter.selectUnit(category: .volume))) {
                        Image(systemName: "cube")
                        Text("\(category.volume.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .pressure, info: converter.getInfo(categoty: .pressure), units: converter.selectUnit(category: .pressure))) {
                        Image(systemName: "hammer")
                        Text("\(category.pressure.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .temperature, info: converter.getInfo(categoty: .temperature), units: converter.selectUnit(category: .temperature))) {
                        Image(systemName: "thermometer")
                        Text("\(category.temperature.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .angle, info: converter.getInfo(categoty: .angle), units: converter.selectUnit(category: .angle))) {
                        Image(systemName: "pyramid")
                        Text("\(category.angle.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .speed, info: converter.getInfo(categoty: .speed), units: converter.selectUnit(category: .speed))) {
                        Image(systemName: "speedometer")
                        Text("\(category.speed.rawValue)")
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
