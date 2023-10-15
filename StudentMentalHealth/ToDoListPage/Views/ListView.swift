//
//  ListView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 02/10/2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items : [ItemModel] = [
        ItemModel(title: "This is the first title", isCompleted: false),
        ItemModel(title: "This is the second", isCompleted: true),
        ItemModel(title: "This is the third", isCompleted: false),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(items) { item in
                    ListRowView(item: item)
                }
            }
        }.listStyle(PlainListStyle())
        .navigationTitle("To-do List:")
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
        }
    }
}

