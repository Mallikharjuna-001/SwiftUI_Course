//
//  GridViewUI.swift
//  SwiftUi
//
//  Created by Mallikharjuna on 17/09/25.
//

import SwiftUI

struct GridViewUI: View {
    let items = Array(1...1000)
    var body: some View {
        ScrollView{
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 50))],spacing:20) {
            ForEach(items,id:\.self){ item in
                Text("\(item)")
                    .frame(width: 50, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
          }
        }
    }
}

struct GridViewUI_Previews: PreviewProvider {
    static var previews: some View {
        GridViewUI()
    }
}
