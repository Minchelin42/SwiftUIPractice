//
//  TitleModifier.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/18.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(Color.white)
            .fontWeight(.bold)
            .font(.system(size: 24))
            .padding(.leading, 20)
    }
}
