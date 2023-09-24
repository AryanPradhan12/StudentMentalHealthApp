//
//  ProfileView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 16/09/2023.
//

import SwiftUI

struct TodolistView: View {
    @StateObject var viewModel = TodolistViewViewModel()
    
    init() {
        
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("To do list")
            .toolbar {
                Button {
                    //Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct TodolistView_Previews: PreviewProvider {
    static var previews: some View {
        TodolistView()
    }
}
