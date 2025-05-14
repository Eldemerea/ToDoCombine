//
//  RegisterView.swift
//  ToDoFirebase
//
//  Created by mac on 25.04.2025.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            HeaderView(title: "to:do", subtitle: "Register", background: .white)
            Form {
                TextField("Full name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
            }
            .offset(y: -100)
            TLButton(
                title: "Register",
                background: .green
            ) {
                //log in attempt
            }
            .padding()

        }
    }
}
#Preview {
    RegisterView()
}
