//
//  LoginViewViewModel.swift
//  ToDoFirebase
//
//  Created by mac on 25.04.2025.
//

import Foundation

class LoginViewViewModel: ObservableObject  {
    @Published var email = ""
    @Published var password = ""
    @Published var showPassword = false
    
    init() {}
}
