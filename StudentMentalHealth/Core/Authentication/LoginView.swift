//
//  LoginView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 02/09/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                //image
                Image("firebase-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 110)
                    .padding(.vertical, 32)
                
                //form fields
                VStack(spacing: 24) {
                    InputView(text: $email, title: "Email Adress", placeholder: "name@example.com")
                        .autocapitalization(.none)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password",
                isSecureField:true)
                    
                }
                .padding(.horizontal)
                //sign in button
                
                Button {
                    print("Log user in..")
                } label: {
                    HStack {
                        Text("Sign In")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                //sign up button
                
                NavigationLink {
                    RegisterationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 4)  {
                        Text("Dont have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
