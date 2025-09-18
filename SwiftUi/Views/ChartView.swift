//
//  ChartView.swift
//  SwiftUi
//
//  Created by Mallikharjuna on 18/09/25.
//

import SwiftUI
import SwiftUICharts

struct ChartView: View {
    var body: some View {
        
        VStack {
            HStack{
            Spacer()
            LineChartView(data: [0,4,7,10,15,16,21,25,15,12,15,18,20], title: "LineChart")
            Spacer()
            PieChartView(data: [2,76,23,6,5,34,2], title: "PieChart")
            }
           
            HStack {
            Spacer()
            BarChartView(data:ChartData(values: [("a",1),("b",3),("v",2)]), title: "LineChart")
            Spacer()
            LineView(data: [1,2,32,2])
            }
        }
        .navigationTitle("ChartView")
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
