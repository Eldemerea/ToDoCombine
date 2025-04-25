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
            Text("To do list")
                .foregroundColor(.cyan)
                .font(Font.custom("KyivTypeSerif-VarGX", size: 30))
        }
        .onAppear {
            for family in UIFont.familyNames {
                print("\(family)")
                for names in UIFont.fontNames(forFamilyName: family) {
                    print("== \(names)")
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
