//
//  InfoView.swift
//  UnitConverter-SwiftUI
//
//  Created by Robert P on 12.05.2021.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode) var presentationMode

    @StateObject private var detailVM = DetailViewModel()
    
    var category: String
    var info: String
    
    var body: some View {
        VStack {
            Text(category)
                .font(.title2)
                .bold()
                .padding(.top, 75)
            Text(info)
                .padding(20)
            Spacer()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                
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
        InfoView(category: "Angle", info: "Angle is a quantity of rotation. The SI unit for angle is the radian (rad), which is dimensionless and defined to be the the angle subtended by an arc that is equal in length to the radius of a circle. Angle is also commonly expressed in terms of degrees (°) and revolutions (rev).")
    }
}
