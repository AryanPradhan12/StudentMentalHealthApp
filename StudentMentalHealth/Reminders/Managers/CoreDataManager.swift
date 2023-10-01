//
//  CoreDataManager.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/10/2023.
//

import Foundation
import CoreData

class CoreDataManager {
    
    private let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    var context: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "RemindersModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    }
    
}
