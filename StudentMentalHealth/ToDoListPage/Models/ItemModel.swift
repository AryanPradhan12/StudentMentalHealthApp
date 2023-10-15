//
//  ItemModel.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 15/10/2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    //Might need to change id from basic Xcode to firebase id
    let title: String
    let isCompleted: Bool
    
}
