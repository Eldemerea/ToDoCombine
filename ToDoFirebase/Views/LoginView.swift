//
//  LoginView.swift
//  ToDoFirebase
//
//  Created by mac on 25.04.2025.
//

import SwiftUI

struct LoginView: View {
    let padding: CGFloat = 16.0
    @State var email = ""
    @State var password = ""
    @State private var showPassword = false
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView(title: "to:do", background: .white)
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
                                .padding()
                        }
                    }
                    
                } 
                .padding(.top, 100)
                HStack{
                    Button(action: {
                        // login attemp
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(.black)
                                .frame(height: 50)
                                .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                            Text("Log In")
                                .bold()
                                .foregroundColor(.white)
                        }
                    }
                           
                    )
                    .padding(.top, 0)
                    //                        Spacer()
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
