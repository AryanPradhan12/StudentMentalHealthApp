//
//  ListViewModel.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 22/10/2023.
//

import Foundation

class ListViewModel: {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first title", isCompleted: false),
            ItemModel(title: "This is the second", isCompleted: true),
            ItemModel(title: "This is the third", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
