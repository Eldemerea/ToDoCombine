//
//  HeaderView.swift
//  ToDoFirebase
//
//  Created by mac on 04.05.2025.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let background: Color
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 180)
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                VStack {
                    
                    Text(title)
                        .foregroundColor(.black)
                        .font(Font.custom("KyivTypeSerif-Light", size: 36))
                        .padding(.bottom, 30)
                    Text(subtitle)
                        .foregroundColor(.black)
                        .font(.system(size: 18))                        .padding(.bottom, 30)
                }
            }
        }
    }
}
#Preview {
    HeaderView(title: "to:do", subtitle: "", background: .white)
}
