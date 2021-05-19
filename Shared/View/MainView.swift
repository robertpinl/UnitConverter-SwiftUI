//
//  MainView.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert Pinl on 12.05.2021.
//

import SwiftUI

struct MainView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .compact {
            CategorySelectionView()
        } else {
            CategorySelectionSidebarView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
