//
//  HomeScreen.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/10/2023.
//

import SwiftUI

struct HomeScreen: View {
    @State private var isPresented: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
               MyListsView()
                
                Divider()
                Button("Add list") {
                    isPresented = true
                }.frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
                    .sheet(isPresented: $isPresented) {
                        AddNewListView { newListName, colorCode in
                            //save
                        }
                    }
            }
            .navigationTitle("My Lists")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
