//
//  RegisterationView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 03/09/2023.
//

import SwiftUI

struct RegisterationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
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
                
                InputView(text: $fullname, title: "Full Name", placeholder: "Enter your name")
           
                
                InputView(text: $password, title: "Password", placeholder: "Enter your password",
            isSecureField:true)
                
                InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Confirm your password",
            isSecureField:true)
                
            }
            .padding(.horizontal)
            
            Button {
                print("Sign user up..")
            } label: {
                HStack {
                    Text("Sign Up")
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
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 4)  {
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }
        }
    }
    
    struct RegisterationView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterationView()
        }
    }
}
