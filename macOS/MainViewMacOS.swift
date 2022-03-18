//
//  MainViewMacOS.swift
//  UnitConverter-SwiftUI (macOS)
//
//  Created by Robert P on 20.05.2021.
//

import SwiftUI

struct MainViewMacOS: View {
    var body: some View {
        CategorySelectionSidebarView()
            .frame(maxWidth: 750)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewMacOS()
    }
}
