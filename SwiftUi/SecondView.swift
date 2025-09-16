//
//  SecondView.swift
//  SwiftUi
//
//  Created by Mallikharjuna on 16/09/25.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
       Text("This is Second View")
            .font(.largeTitle)
            .padding()
            .navigationTitle("Details View")
            
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
