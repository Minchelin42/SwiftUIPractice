//
//  PointView.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/15.
//

import SwiftUI

struct PointView: View {
    var body: some View {
        ZStack {
            Color(.black)
            VStack{
                
                HStack {
                    Image(systemName: "suit.heart")
                        .resizable()
                        .frame(width: 55, height: 50)
                        .foregroundStyle(Color.pink)
                        .padding(.leading, 20)
                    Spacer()
                }
                .padding(.bottom, 12)

                HStack{
        
                    Text("포인트를 더 모을 수 있게 맞춤 혜택을 추천해드릴까요?")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                        .padding(.horizontal, 20)
                    Spacer()
                }
                .padding(.bottom, 40)

                VStack{
                    HStack{
                        Image(systemName: "star.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color.blue)
                            .padding(.leading, 20)
                        
                        Text("매일 포인트 받는 출석체크 / 퀴즈")
                            .foregroundStyle(Color.white)
                            .fontWeight(.medium)
                            .font(.system(size: 18))
                        
                        Spacer()

                    }.padding(.bottom, 24)
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color.red)
                            .padding(.leading, 20)
                        
                        Text("새로운 이벤트")
                            .foregroundStyle(Color.white)
                            .fontWeight(.medium)
                            .font(.system(size: 18))
                        
                        Spacer()

                    }
                    .padding(.bottom, 24)
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color.yellow)
                            .padding(.leading, 20)
                        
                        Text("미션 추천")
                            .foregroundStyle(Color.white)
                            .fontWeight(.medium)
                            .font(.system(size: 18))
                        
                        Spacer()
                    }
                    .padding(.bottom, 24)
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
                        Spacer()
                        HStack {
                            Spacer()
                            Text("동의하기")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(18)
                        Spacer()
                    }
                    
                    Button(action: {
                        print("다음에 하기 클릭")
                    }) {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("다음에 하기")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(18)
                        Spacer()
                    }
                    
                }
            }
            .safeAreaPadding(.vertical, 90)

            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PointView()
}
