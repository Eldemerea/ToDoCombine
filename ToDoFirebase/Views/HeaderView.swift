//
//  HeaderView.swift
//  ToDoFirebase
//
//  Created by mac on 04.05.2025.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let background: Color
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 180)
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.black)
                    .font(Font.custom("KyivTypeSerif-Light", size: 36))
                    .padding(.bottom, 30)
                //                        .frame(width: 200, height: 50)
                
                
            }
            
        }
    }
}
#Preview {
    HeaderView(title: "to:do", background: .white)
}
