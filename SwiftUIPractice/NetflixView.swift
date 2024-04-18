//
//  NetflixView.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/19.
//

import SwiftUI

struct NetflixView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var nickname = ""
    @State private var location = ""
    @State private var code = ""
    
//    @State private var isOn = false
    @State private var isPresented = false
    
    var additionalOption: some View {
        HStack {
            Text("추가 정보 입력")
                .foregroundStyle(.white)
            Spacer()
            Toggle(isOn: $isPresented) {
                Text("")
            }.toggleStyle(.switch)
            .tint(.red)
        }
        .padding(.horizontal, 30)
    }
    
    func signInTextField(placeHolder: String, binding: Binding<String>) -> some View {

        TextField(placeHolder, text: binding)
            .frame(height: 44)
            .background(.gray)
            .cornerRadius(10)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 30)
            .padding(.bottom, 6)
    }
    
    func pointButton() -> some View {
        
        Button(action: {
            print("회원가입 클릭")
            print("이메일: ", email)
            print("비밀번호: ", password)
            if nickname.isEmpty {
                nickname = "Unknown177"
            }
            if code.isEmpty {
                code = "ABX1@28"
            }
            
            isPresented.toggle()
        }) {
            HStack {
                Spacer()
                Text("회원가입")
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                Spacer()
            }
            .padding(.vertical, 12)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(12)
        }
        .padding(.horizontal, 30)
        .padding(.bottom, 8)
    }
    
    var body: some View {
        
        ZStack {
            Color(.black).ignoresSafeArea()
            VStack {
                
                Text("NETFLIX")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                    .foregroundStyle(.red)
                
                signInTextField(placeHolder: "이메일 주소", binding: $email)
                signInTextField(placeHolder: "비밀번호", binding: $password)
                signInTextField(placeHolder: "닉네임", binding: $nickname)
                signInTextField(placeHolder: "위치", binding: $location)
                signInTextField(placeHolder: "추천 코드", binding: $code)
                
                pointButton()
                
                additionalOption
            }
        }
        .sheet(isPresented: $isPresented, content: {
            QuizView()
        })
    }
}

#Preview {
    NetflixView()
}
