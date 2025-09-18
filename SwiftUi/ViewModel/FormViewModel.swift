//
//  FormViewModel.swift
//  SwiftUi
//
//  Created by Mallikharjuna on 18/09/25.
//

import Foundation
import SwiftUI


class FormViewModel:ObservableObject{
    @State var firstname = ""
    @State var lastname = ""
    @State var password = ""
    @State var cnfmPassword = ""
}
