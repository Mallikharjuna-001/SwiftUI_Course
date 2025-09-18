//
//  AlertViewContrller.swift
//  SwiftUi
//
//  Created by Mallikharjuna on 17/09/25.
//

import SwiftUI

struct AlertViewContrller: View {
   @State private var alertPresented = false
    @State private var isNaviagete = false
    var body: some View {
        VStack {
            Button {
                alertPresented = true
            } label: {
                Text("Alert")
                    
            }
            .frame(width: 200, height: 100, alignment: .center)
            .padding(EdgeInsets())
            .background(Color.red)
            .cornerRadius(10)

            NavigationLink(destination:GridView(),isActive:$isNaviagete){
                EmptyView()
            }
        }
        .navigationTitle("AlertView")
        .alert(isPresented: $alertPresented, content: {
            Alert(title: Text("GridView"),
                  message:Text("Moving to Alert to GridView"),
                  primaryButton:.default(Text("GridView"),action:{
                   alertPresented = false
                   isNaviagete = true
            }),
                  secondaryButton:.cancel(Text("Cancel"))
                  
            )
            
        })
    }
}

struct AlertViewContrller_Previews: PreviewProvider {
    static var previews: some View {
        AlertViewContrller()
    }
}
