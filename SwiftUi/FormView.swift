//
//  FormView.swift
//  SwiftUi
//
//  Created by Mallikharjuna on 18/09/25.
// Today i learned  Form
// Each Section creates a grouped block with a header (and optional footer).

import SwiftUI

struct FormView: View {
    @StateObject private var viewModel = FormViewModel()
    var body: some View {
        NavigationView{
            VStack{
                Text("User Form")
                    .font(.largeTitle)
                    .padding()
                    Spacer()
                Form{
                    Section{
                        TextField("First Name", text: $viewModel.firstname, prompt: Text("First name"))
                        TextField("Last Name", text: $viewModel.lastname, prompt: Text("Last name"))
                    }
                    .lineSpacing(2)
                }
                Spacer()
            }
        }
        
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
