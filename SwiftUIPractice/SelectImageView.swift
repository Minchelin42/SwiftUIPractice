//
//  SelectImageView.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/22.
//

import SwiftUI

struct RandomBigImageView: View {
    
    let url = URL(string: "https://picsum.photos/300")
    
    var body: some View {
    
            AsyncImage(url: url) { data in
                switch data {
                case .empty:
                    ProgressView()
                        .frame(width: 220, height: 250)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 220, height: 250)
                        .cornerRadius(30)
                case .failure:
                    Image(systemName: "suit.heart.fill")
                        .frame(width: 220, height: 250)
                @unknown default:
                    Image(systemName: "suit.heart.fill")
                        .frame(width: 220, height: 250)
                }
            }
        
    }
}

struct SelectImageView: View {
    
    @Binding var changeHeader: String

    var body: some View {
        VStack {
            RandomBigImageView()
                .padding(.bottom, 20)
            
            TextField("header를 입력하세요", text: $changeHeader)
                .font(.title2)
                .multilineTextAlignment(.center)
            
        }
    }
}

#Preview {
    MyRandomImageView()
}
