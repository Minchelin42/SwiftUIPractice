//
//  TitleImageModifier.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/18.
//

import SwiftUI

struct TitleImage: View {
    
    let color: Color
    let systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .resizable()
            .frame(width: 55, height: 50)
            .foregroundStyle(color)
            .padding(.leading, 20)
    }
}
