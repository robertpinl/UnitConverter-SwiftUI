//
//  CategorySelectionView.swift
//  Shared
//
//  Created by Robert Pinl on 29.04.2021.
//

import SwiftUI

struct CategorySelectionView: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases, id: \.self) { category in
                    NavigationLink {
                        DetailView(viewModel: DetailViewModel(category: category))
                    } label: {
                        Label(category.rawValue, systemImage: CategoryManager.getIcon(category: category))
                    }
                }
            }
            .navigationTitle("Unit Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySelectionView()
    }
}
