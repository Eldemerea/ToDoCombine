//
//  LoginView.swift
//  ToDoFirebase
//
//  Created by mac on 25.04.2025.
//

import SwiftUI

struct LoginView: View {
        var body: some View {
            
            VStack {
                Text("to:do")
                    .foregroundColor(.black)
                    .font(Font.custom("KyivTypeSerif-Light", size: 36))
                    .frame(width: 200, height: 100)
                    .padding(.top, 30)
                Spacer()
            }
        }
}

#Preview {
    LoginView()
}
