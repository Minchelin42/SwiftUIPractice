//
//  QuizView.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/16.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        ZStack{
            Color(.black)
            VStack {
                HStack {
                    Image(systemName: "book")
                        .resizable()
                        .frame(width: 55, height: 50)
                        .foregroundStyle(Color.yellow)
                        .padding(.leading, 20)
                    Spacer()
                }
                .padding(.top, 40)
                .padding(.bottom, 12)
                
                HStack{
                    Text("등기부등본은 집주인만 발급받을 수 있다?")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                        .padding(.leading, 20)
                    Spacer()
                }
                .padding(.bottom, 4)
                
                HStack{
                    Text("매일 푸는 금융 퀴즈 290,300명 참여중")
                        .foregroundStyle(Color.gray)
                        .fontWeight(.medium)
                        .font(.system(size: 18))
                        .padding(.leading, 20)
                    Spacer()
                }
                .padding(.bottom, 40)
                
                HStack {
                    Button(action: {
                        print("그렇다 클릭")
                    }) {
                    
                        HStack {
                            Spacer()
                            VStack{
                                Image(systemName: "circlebadge")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding(.bottom, 8)
                                
                                Text("그렇다")
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                            }
                            .foregroundStyle(Color.blue)
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(.white)
                        .frame(height: 150)
                        .background(Color.blue.opacity(0.3))
                        .cornerRadius(20)
                    }
                    
                    Button(action: {
                        print("아니다 클릭")
                    }) {
                        HStack {
                            Spacer()
                            VStack{
                                Image(systemName: "xmark")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .padding(.bottom, 14)
                                
                                Text("아니다")
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                            }
                            .foregroundStyle(Color.red)
                            Spacer()
                        }
                        .padding()
                        .foregroundColor(.white)
                        .frame(height: 150)
                        .background(Color.red.opacity(0.3))
                        .cornerRadius(20)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                
                HStack{
                    Button(action: {
                        print("토스뱅크 클릭")
                    }) {
                        HStack {
                            Spacer()
                            VStack{
                                Spacer()
                                Image(systemName: "dollarsign.circle")
                                    .resizable()
                                    .frame(width: 35, height: 35)
                                    .padding(.bottom, 4)
                                
                                Text("토스뱅크")
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
                    
                    Button(action: {
                        print("토스증권 클릭")
                    }) {
                        HStack {
                            Spacer()
                            VStack{
                                Spacer()
                                Image(systemName: "chart.line.uptrend.xyaxis")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .padding(.bottom, 4)
                                
                                Text("토스증권")
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
                    
                    Button(action: {
                        print("고객센터 클릭")
                    }) {
                        HStack {
                            Spacer()
                            VStack{
                                Spacer()
                                Image(systemName: "headphones")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .padding(.bottom, 4)
                                
                                Text("고객센터")
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
                    
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
        
            }
            .background(Color.gray.opacity(0.3))
            .cornerRadius(30)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    QuizView()
}
