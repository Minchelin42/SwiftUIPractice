//
//  PointView.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/15.
//

import SwiftUI

struct PointView: View {
    
    func pointOption(color: Color, title: String) -> some View {
        HStack{
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundStyle(color)
                .padding(.leading, 20)
            
            Text(title)
                .foregroundStyle(Color.white)
                .fontWeight(.medium)
                .font(.system(size: 18))
            
            Spacer()

        }.padding(.bottom, 24)
    }
    
    func pointButton(color: Color, title: String) -> some View {

        HStack {
            Spacer()
            Text(title)
                .fontWeight(.bold)
                .font(.system(size: 20))
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
        .background(color)
        .cornerRadius(18)

    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack{
                HStack {
                    TitleImage(color: Color.pink, systemName: "suit.heart") 
                    Spacer()
                }
                .padding(.vertical, 8)

                HStack{
        
                    Text("포인트를 더 모을 수 있게 맞춤 혜택을 추천해드릴까요?")
                        .modifier(TitleModifier())
               
                    Spacer()
                }
                .padding(.bottom, 40)

                VStack{
                    pointOption(color: Color.blue, title: "매일 포인트 받는 출석체크 / 퀴즈")
                    pointOption(color: Color.red, title: "새로운 이벤트")
                    pointOption(color: Color.yellow, title: "미션 추천")
                }
                
                Spacer()
                
                HStack {
                    Text("[선택] 맞춤형 서비스 이용 동의")
                        .foregroundStyle(Color.white)
                        .fontWeight(.medium)
                        .font(.system(size: 18))
                        .padding(.leading, 20)
                    
                    Spacer()
                }
                .padding(.bottom, 30)

                VStack{
                    Button(action: {
                        print("동의하기 클릭")
                    }) {
                        pointButton(color: Color.blue, title: "동의하기")
                    }
                    Button(action: {
                        print("다음에 하기 클릭")
                    }) {
                        pointButton(color: Color.gray, title: "다음에 하기")
                    }
                    
                }
            }
            .safeAreaPadding(.vertical, 10)
        }

    }
}

#Preview {
    PointView()
}
