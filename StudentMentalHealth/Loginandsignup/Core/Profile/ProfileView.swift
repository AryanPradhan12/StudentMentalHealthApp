//
//  ProfileView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 03/09/2023.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            
            if let user = viewModel.currentUser {
                List {
                    Section {
                        HStack {
                            Text(user.initials)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(width: 72, height: 72)
                                .background(Color(.systemGray3))
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing:  4) {
                                Text(user.fullname)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .padding(.top, 4)
                                Text(user.email)
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                                
                            }
                        }
                        
                        
                        
                        Section("General") {
                            HStack {
                                SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                                Spacer()
                                Text("1.0.0")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    Section("Account") {
                        Button {
                            viewModel.signOut()
                        } label: {
                            SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                        }
                        
                        Button {
                            print("Delete Account..")
                        } label: {
                            SettingsRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                            
                        }
                    }
                    
                    
                    Section("Features") {
                        HStack {
                            NavigationLink(destination: {
                                ListView()
                            }, label: {
                                Text("To do list")
                            })
                        }
            
                    }
                    
                    
                }
            }
        }
    }
    
    
}
                        
                    
                  
                
            
            
        
    
    
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
    
    
    

