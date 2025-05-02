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
        
        VStack {
            Text("to:do")
                .foregroundColor(.black)
                .font(Font.custom("KyivTypeSerif-Light", size: 36))
            //                        .frame(width: 200, height: 100)
                .padding(.top, 30)
            Spacer()
            Form {
                TextField("EMail address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                HStack {
                    if showPassword {
                        TextField(" Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    } else {
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }
                    Button(action: { self.showPassword.toggle()}) {
                        Image(systemName: "eye")
                            .foregroundColor(.secondary)
                    }
                }
                
            }
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
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Create an account")
                        .foregroundStyle(
                            .linearGradient(colors: [.teal, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                })
            }
        }
    }
}

#Preview {
    LoginView()
}
