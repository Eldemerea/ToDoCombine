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
//            Spacer()
//                .frame(height: 180)
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                VStack {
                    
                    Text(title)
                        .foregroundColor(.black)
                        .font(Font.custom("KyivTypeSerif-Light", size: 42))
                    Text(subtitle)
                        .foregroundColor(.black)
                        .font(Font.custom("MazzardM-Light", size: 24))
                }
            }
        }
        .offset(y: -50)
    }
}
#Preview {
    HeaderView(title: "to:do", subtitle: "", background: .white)
}
