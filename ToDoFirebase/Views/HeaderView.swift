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
        VStack { Text(title)
                .foregroundColor(.black)
                .font(Font.custom("KyivTypeSerif-Light", size: 36))
                .padding(.top, 100)
//                        .frame(width: 200, height: 50)
            Text(subtitle)
        }
        .frame(height: 200)
    }
}

#Preview {
    HeaderView()
}
