//
//  UnitSelectionView.swift
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

struct UnitSelectionView: View {
    
    @StateObject var units = ConverterService()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    NavigationLink(destination: DetailView(category: .lenght, units: units.selectUnit(category: .lenght))) {
                        Image(systemName: "thermometer")
                        Text("\(category.lenght.rawValue)")
                    }
                    
                    NavigationLink(destination: DetailView(category: .lenght, units: units.selectUnit(category: .lenght))) {
                        Image(systemName: "thermometer")
                        Text("\(category.lenght.rawValue)")
                    }
                        //                    }
                        //                    NavigationLink(destination: DetailView(category: .lenght)) {
                        //                        Text("Weight")
                        //                    }
                        //                    NavigationLink(destination: DetailView(category: .lenght)) {
                        //                        Text("Area")
                        //                    }
                        //                    NavigationLink(destination: DetailView(category: .lenght)) {
                        //                        Text("Lenght")
                        //                    }
                        //                    NavigationLink(destination: DetailView(category: .lenght)) {
                        //                        Text("Lenght")
                        //                    }
                        //                    NavigationLink(destination: DetailView(category: .lenght)) {
                        //                        Text("Lenght")
                        //                    }
                        //                    NavigationLink(destination: DetailView(category: .lenght)) {
                        //                        Text("Lenght")
                    
                }
            }
            
            .navigationBarTitle("Unit Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UnitSelectionView()
    }
}
