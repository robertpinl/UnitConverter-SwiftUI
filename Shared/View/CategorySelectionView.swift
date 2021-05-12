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
                    NavigationLink(destination: DetailView(category: .mass, units: converter.selectUnit(category: .mass))) {
                        Image(systemName: "case")
                        Text("\(category.mass.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .lenght, units: converter.selectUnit(category: .lenght))) {
                        Image(systemName: "ruler")
                        Text("\(category.lenght.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .area, units: converter.selectUnit(category: .area))) {
                        Image(systemName: "map")
                        Text("\(category.area.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .volume, units: converter.selectUnit(category: .volume))) {
                        Image(systemName: "cube")
                        Text("\(category.volume.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .pressure, units: converter.selectUnit(category: .pressure))) {
                        Image(systemName: "hammer")
                        Text("\(category.pressure.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .temperature, units: converter.selectUnit(category: .temperature))) {
                        Image(systemName: "thermometer")
                        Text("\(category.temperature.rawValue)")
                    }
                    NavigationLink(destination: DetailView(category: .angle, units: converter.selectUnit(category: .angle))) {
                        Image(systemName: "pyramid")
                        Text("\(category.angle.rawValue)")
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