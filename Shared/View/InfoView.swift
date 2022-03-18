//
//  InfoView.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert P on 12.05.2021.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.dismiss) var dismiss
    var category: Category
    
    var body: some View {
        VStack {
            Text(category.rawValue)
                .font(.title2)
                .bold()
                .padding(.top, 75)
            Text(CategoryManager.getInfo(categoty: category))
                .padding(20)
            Spacer()
            
            Button(action: {
                dismiss()
            }, label: {
                Text("OK")
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 220, height: 50)
                    .background(Color.blue)
                    .cornerRadius(12)
            })
            .padding(.bottom, 55)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(category: .mass)
    }
}
