SWIFT UI NavigationView and NavigationLink Between two View


//
//  ContentView.swift
//  SwiftUi
//
//  Created by Mallikharjuna on 16/09/25.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Welcome to SwiftUi Journey!")
                    .font(.headline)
                    .bold()
                    .padding()
                NavigationLink(destination: SecondView()) {
                    Text("Go to Second View")
                        .font(.subheadline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        
                }
                
            }
            .navigationTitle("Home")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

