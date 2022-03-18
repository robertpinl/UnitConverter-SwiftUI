//
//  DetailView.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert Pinl on 11.05.2021.
//

import SwiftUI

struct DetailView: View {
    
    @StateObject var viewModel: DetailViewModel
    
    var body: some View {
        Form {
            Section {
                Text("Select units")
                    .font(.headline)
                Picker("Convert", selection: $viewModel.firstUnit) {
                    ForEach(0 ..< viewModel.units.count, id: \.self) { Text("\(viewModel.units[$0].symbol)") }
                }
                Picker("To", selection: $viewModel.secondUnit) {
                    ForEach(0 ..< viewModel.units.count, id: \.self) { Text("\(viewModel.units[$0].symbol)") }
                }
            }
            
            Section {
                Text("Value")
                    .font(.headline)
                TextField("Enter", text: $viewModel.firstUnitValue)
                    .keyboardType(.decimalPad)
            }
            Section {
                Text("Result")
                    .font(.headline)
                Text("\(viewModel.convert(value: viewModel.firstUnitValue, unit1: viewModel.units[viewModel.firstUnit], unit2: viewModel.units[viewModel.secondUnit]), specifier: "%g")")
            }
        }
        .sheet(isPresented: $viewModel.showingInfo, content: {
            InfoView(category: viewModel.category)
        })
        .navigationTitle(viewModel.category.rawValue)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button(action: {
                    hideKeyboard()
                }, label: {
                    Image(systemName: "keyboard.chevron.compact.down")
                })
                Button(action: {
                    viewModel.showingInfo = true
                }, label: {
                    Image(systemName: "info.circle")
                })
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(viewModel: DetailViewModel(category: .mass))
    }
}
