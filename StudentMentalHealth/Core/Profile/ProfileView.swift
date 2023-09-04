//
//  ProfileView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 03/09/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text("AP")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing:  4) {
                        Text("Aryan Pradhan")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        Text("Aryanrp2007@gmail.com")
                            .font(.footnote)
                           
                    }
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
            
            Section("Account") {
                Button {
                    print
                } label: {
                    
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
    

