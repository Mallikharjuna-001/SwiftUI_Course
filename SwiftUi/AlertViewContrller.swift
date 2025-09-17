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
        
        NavigationView{
        VStack{
            Button {
                print("Alert")
                alertPresented = true
            } label: {
                Text("Tap me")
                    
            }
            .frame(width: 100, height: 150, alignment: .center)
            .padding(EdgeInsets())
            .background(Color.red)
            .cornerRadius(10)

            NavigationLink(destination:SecondView(),isActive:$isNaviagete){
                EmptyView()
            }
        }
        }
        .navigationTitle("Alert")
        .alert(isPresented: $alertPresented, content: {
            Alert(title: Text("Alert Title"),
                  message:Text("Alert body of the message"),
                  primaryButton:.default(Text("Primary Button"),action:{
               
                 print("Primary Button Tapped")
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
