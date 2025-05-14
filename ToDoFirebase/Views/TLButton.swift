//
//  TLButton.swift
//  ToDoFirebase
//
//  Created by mac on 07.05.2025.
//

import SwiftUI

struct TLButton: View {
    var title: String
    var background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(background)
                    .frame(height: 50)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                Text(title)
                    .font(.system(size: 20.0))
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
}


#Preview {
    TLButton(title: "Login", background: .black) {
        
    }
}
