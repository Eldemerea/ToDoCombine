//
//  LoginView.swift
//  ToDoFirebase
//
//  Created by mac on 25.04.2025.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State private var showPassword = false
    
    
    var body: some View {
        NavigationStack {
            VStack { 
                
                HeaderView(title: "to:do", subtitle: "", background: .white)
                
                Form {
                    TextField("EMail address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    HStack {
                        if showPassword {
                            TextField(" Password", text: $password)
                                .textFieldStyle(DefaultTextFieldStyle())
                        } else {
                            SecureField("Password", text: $password)
                                .textFieldStyle(DefaultTextFieldStyle())
                            
                        }
                        Button(action: { self.showPassword.toggle()}) {
                            Image(systemName: "eye")
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .offset(y: -70)
                
                HStack{
                    TLButton(title: "Log In", background: .black) {
                        //log in attempt
                    }
                }
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
