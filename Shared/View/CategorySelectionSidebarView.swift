//
//  CategorySelectionSidebarView.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert Pinl on 12.05.2021.
//

import SwiftUI

struct CategorySelectionSidebarView: View {
    
    @StateObject var categoryVM = CategoryViewModel()
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DetailView(category: .mass, units: categoryVM.selectUnit(category: .mass))) {
                    Image(systemName: "case")
                    Text("\(category.mass.rawValue)")
                }
                NavigationLink(destination: DetailView(category: .lenght, units: categoryVM.selectUnit(category: .lenght))) {
                    Image(systemName: "ruler")
                    Text("\(category.lenght.rawValue)")
                }
                NavigationLink(destination: DetailView(category: .area, units: categoryVM.selectUnit(category: .area))) {
                    Image(systemName: "map")
                    Text("\(category.area.rawValue)")
                }
                NavigationLink(destination: DetailView(category: .volume, units: categoryVM.selectUnit(category: .volume))) {
                    Image(systemName: "cube")
                    Text("\(category.volume.rawValue)")
                }
                NavigationLink(destination: DetailView(category: .pressure, units: categoryVM.selectUnit(category: .pressure))) {
                    Image(systemName: "hammer")
                    Text("\(category.pressure.rawValue)")
                }
                NavigationLink(destination: DetailView(category: .temperature, units: categoryVM.selectUnit(category: .temperature))) {
                    Image(systemName: "thermometer")
                    Text("\(category.temperature.rawValue)")
                }
                NavigationLink(destination: DetailView(category: .angle, units: categoryVM.selectUnit(category: .angle))) {
                    Image(systemName: "pyramid")
                    Text("\(category.angle.rawValue)")
                }
                NavigationLink(destination: DetailView(category: .speed, units: categoryVM.selectUnit(category: .speed))) {
                    Image(systemName: "speedometer")
                    Text("\(category.speed.rawValue)")
                }
                NavigationLink(destination: DetailView(category: .duration, units: categoryVM.selectUnit(category: .duration))) {
                    Image(systemName: "clock.arrow.2.circlepath")
                    Text("\(category.duration.rawValue)")
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Category")
            DetailView(category: .mass, units: categoryVM.selectUnit(category: .mass))
        }
    }
}

struct CategorySelectionSidebarView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySelectionSidebarView()
    }
}
