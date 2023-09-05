//
//  ContentView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/09/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
     var body: some View {
         Group {
             if viewModel.userSession != nil {
                 ProfileView()
             } else {
                 LoginView()
             }
    }
   
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

