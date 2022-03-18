//
//  CategorySelectionSidebarView.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert Pinl on 12.05.2021.
//

import SwiftUI

struct CategorySelectionSidebarView: View {
        
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
            .listStyle(SidebarListStyle())
            .navigationTitle("Category")
            DetailView(viewModel: DetailViewModel(category: .mass))
        }
    }
}

struct CategorySelectionSidebarView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySelectionSidebarView()
    }
}
