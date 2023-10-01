//
//  MyList+Extensions.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/10/2023.
//

import Foundation
import CoreData

extension MyList {
    static var all: NSFetchRequest<MyList> {
        let request = MyList.fetchRequest()
        request.sortDescriptors = []
        return request
    }
    func save() throws {
       try CoreDataManager.shared.context.save()
    }
}
