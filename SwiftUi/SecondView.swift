//
//  SecondView.swift
//  SwiftUi
//
//  Created by Mallikharjuna on 17/09/25.
//

import SwiftUI

struct SecondView: View {
    @State private var isChartView:Bool = false
    var body: some View {
        
        VStack{
            Text("This is Second View")
                 .font(.largeTitle)
                 .padding()
                 .navigationTitle("Details View")
            Spacer(minLength:5)
            Text("Alert View")
            AlertViewContrller()
            Spacer(minLength:5)
            Button {
                self.isChartView = true
            } label: {
                Text("ChartView")
                    .frame(width: 150, height: 40, alignment: .center)
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            }
            Spacer(50)
            NavigationLink(destination: ChartView(),isActive:$isChartView) {
                EmptyView()
            }
         }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
