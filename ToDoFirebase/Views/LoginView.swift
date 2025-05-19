//
//  LoginView.swift
//  ToDoFirebase
//
//  Created by mac on 25.04.2025.
//

import SwiftUI

struct LoginView: View {
@StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationStack {
            VStack { 
                
                HeaderView(title: "to:do", subtitle: "", background: .white)
                
                Form {
                    TextField("EMail address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    HStack {
                        if viewModel.showPassword {
                            TextField("  Password", text: $viewModel.password)
                                .textFieldStyle(DefaultTextFieldStyle())
                        } else {
                            SecureField("Password", text: $viewModel.password)
                                .textFieldStyle(DefaultTextFieldStyle())
                            
                        }
                        Button(action: { viewModel.showPassword.toggle()}) {
                            Image(systemName: "eye")
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .offset(y: -70)
                
                    TLButton(title: "Log In", background: .black) {
                        //log in attempt
                    }
                    .padding()

                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                        .foregroundStyle(
                            .linearGradient(colors: [.teal, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
