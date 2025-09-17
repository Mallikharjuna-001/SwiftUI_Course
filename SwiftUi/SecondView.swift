//
//  SecondView.swift
//  SwiftUi
//
//  Created by Mallikharjuna on 17/09/25.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        
        VStack{
            Text("This is Second View")
                 .font(.largeTitle)
                 .padding()
                 .navigationTitle("Details View")
            Spacer()
            Text("Alert View")
            AlertViewContrller()
            Spacer()
         }
        
        
        
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
