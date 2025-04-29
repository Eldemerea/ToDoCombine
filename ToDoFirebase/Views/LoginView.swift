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
                    HStack {
                        SecureField("Password", text: $password)
                        Button(action: { self.showPassword.toggle()}) {
                            Image(systemName: "eye")
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
        }
}

#Preview {
    LoginView()
}
