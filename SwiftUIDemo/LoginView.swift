//
//  LoginView.swift
//  SwiftUIDemo
//
//  Created by ROMAN VRONSKY on 29.03.2023.
//

import SwiftUI


struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing: 100) {
            
            Image("vkLogo")
                .resizable().frame(width: 100, height: 100)
//                .padding(-40)
            VStack(spacing: 0) {
                
                TextField("Email or Phone", text: $email).padding().border(.gray, width: 0.5)
                TextField("Password", text: $password).padding()
            }
            
            .background(Color(.systemGray5))
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .padding(20)
            
                Button {
                    
                } label: {
                    Text("Log in")
                        .foregroundColor(.white)
                }
                
                .frame(width: 355, height: 50).background(Color(#colorLiteral(red: 0.3190446496, green: 0.5094019771, blue: 0.717453897, alpha: 1))) .cornerRadius(10)
                .padding(-95)
        
        }
       
    }
    
}

struct LoginViewPreview: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
    
    
}
