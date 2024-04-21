//
//  MyRandomImageView.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/22.
//

import SwiftUI

struct RandomImageView: View {
    
    let url = URL(string: "https://picsum.photos/300")
    
    var body: some View {
    
            AsyncImage(url: url) { data in
                switch data {
                case .empty:
                    ProgressView()
                        .frame(width: 110, height: 150)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 110, height: 150)
                        .cornerRadius(30)
                case .failure:
                    Image(systemName: "suit.heart.fill")
                        .frame(width: 110, height: 150)
                @unknown default:
                    Image(systemName: "suit.heart.fill")
                        .frame(width: 110, height: 150)
                }
            }
        
    }
}

struct MyRandomImageView: View {
    
    var number: [Int] = [1,2,3,4,5]
    
    @State private var isPresented = false
    
    @State var firstHeader = "첫번째 섹션"
    @State var secondHeader = "두번째 섹션"
    @State var thirdHeader = "세번째 섹션"
    @State var fourthHeader = "네번째 섹션"
    @State var fifthHeader = "다섯번째 섹션"

    func sectionView(text: Binding<String>) -> some View {

        return Section {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach (number, id: \.self) { _ in
                        NavigationLink {
                            SelectImageView(changeHeader: text)
                        } label: {
                            RandomImageView()
                        }
                    }
                }
            }
        } header: {
            Text(text.wrappedValue)
                .font(.title2)
                .foregroundStyle(.black)
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                   sectionView(text: $firstHeader)
                   sectionView(text: $secondHeader)
                   sectionView(text: $thirdHeader)
                   sectionView(text: $fourthHeader)
                   sectionView(text: $fifthHeader)
                }
                .listStyle(.plain)
             
            }
            .navigationTitle("My Random Image")
        }
        
        
    }
}

#Preview {
    MyRandomImageView()
}
