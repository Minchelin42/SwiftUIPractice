//
//  OptionView.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/18.
//

import SwiftUI

struct OptionView: View {
    
    func optionButton(systemName: String, title: String) -> some View {
        HStack {
            Spacer()
            VStack{
                Spacer()
                Image(systemName: systemName)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(.bottom, 4)
                
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 17))
                Spacer()
            }
            .foregroundStyle(Color.white)
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
        .frame(height: 90)
        .background(Color.black.opacity(0.4))
        .cornerRadius(20)
    }
    
    
    var body: some View {
        HStack{
            Button(action: {
                print("토스뱅크 클릭")
            }) {
                optionButton(systemName: "dollarsign.circle", title: "토스뱅크")
            }
            
            Button(action: {
                print("토스증권 클릭")
            }) {
                optionButton(systemName: "chart.line.uptrend.xyaxis", title: "토스증권")
            }
            
            Button(action: {
                print("고객센터 클릭")
            }) {
                optionButton(systemName: "headphones", title: "고객센터")
            }
            
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 20)
    }
  
}


#Preview {
    OptionView()
}
