//
//  MyListViewModel.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/10/2023.
//

import Foundation
import CoreData

struct MyListViewModel: Identifiable {
    
    private let myList: MyList
    
    init(myList: MyList) {
        self.myList = myList
    }
    
    var id: NSManagedObjectID {
        myList.objectID
    }
    var name: String {
        myList.name ?? ""
    }
    var colorCode: String {
        myList.colorCode ?? ""
    }
}
